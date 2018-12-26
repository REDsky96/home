//
//  ViewController.swift
//  MyOkashi
//
//  Created by 井上滉貴 on 2018/12/20.
//  Copyright © 2018 井上滉貴. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        searchText.delegate = self
        searchText.placeholder = "お菓子の名前を検索してください"
        tableView.dataSource = self
        tableView.delegate = self
    }

    @IBOutlet weak var searchText: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    //お菓子のリスト(タプル配列)
    //=[]は配列として初期化（宣言）を行っている
    var okashiList : [(name: String, maker: String, link: URL, image: URL)] = []
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //入力する際のキーボードを閉じるために記載テンプレ
        view.endEditing(true)
        //nilならばデバッグエリアに表示されない
        if let searchWord = searchBar.text {
            //しっかりと入力されたならばデバックエリアに表示する。
            print(searchWord)
            //入力されていたら、お菓子を検索
            searchOkashi(keyword: searchWord)
        }
    }
    
    //jsonのitem内のデータ構造
    //structは複数の変数やメソッドをまとめて管理できる構造体
    //codableは外部とのデータ変数をシンプルにしてくれるプロトコル(取得したjsonを構造体に格納できるルールを持っている)
    struct ItemJson: Codable {
        let name : String?
        let maker : String?
        let url : URL?
        let image : URL?
    }
    
    //Jsonデータ構造
    struct ResultJson : Codable {
        //配列でまとめて管理する構造体
        let item : [ItemJson]?
    }
    
    //searchOkashiメソッド
    func searchOkashi(keyword: String){
        
        guard let keyword_encode = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            return
        }
        
        guard let req_url = URL(string: "http://www.sysbird.jp/toriko/api/?apikey=guest&format=json&keyword=\(keyword_encode)&max=10&order=r") else {
            return
        }
        print(req_url)
        
        //リクエストに必要なき情報を生成
        let req = URLRequest(url: req_url)
        
        //データ転送を管理するためのセッションを生成
        //URLSessionにはバックグラウンドでの通信機能や中断した通信を再開させる機能もある
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        
        //リクエストをタスクとして登録
        let task = session.dataTask(with: req, completionHandler: {(data, response, error) in
            //sessionを終了
            session.finishTasksAndInvalidate()
            do {
                let decoder = JSONDecoder()
                //受け取ったjsonをデータを解説して格納
                let json = try decoder.decode(ResultJson.self, from: data!)
                //print(json)
                
                //お菓子の情報が取得できているか確認
                //json.itemにお菓子の情報がある場合にitemsに格納して次の処理を行う
                if let items = json.item{
                    //お菓子リストの初期化
                    self.okashiList.removeAll()
                    
                    //取得しているお菓子の数だけ処理
                    for item in items {
                        
                        //お菓子の名前などをアンラップする
                        //4つの項目の全てに値が入れない場合は次のお菓子データで処理を継続する
                        if let name = item.name, let maker = item.maker, let link = item.url, let image = item.image{
                            
                            //1つのお菓子をあタプルでまとめて管理
                            let okashi = (name, maker, link, image)
                            
                            //お菓子を配列へ追加
                            self.okashiList.append(okashi)
                        }
                    }
                    
                    //Table Viewを更新する
                    self.tableView.reloadData()
                    
                    if let okashidbg = self.okashiList.first{
                        print("---------------------")
                        print("okashiList[0] = \(okashidbg)")
                    }
                }
            }catch {
                print("エラーが発生しました")
            }
        })
        
        //ダウンロード開始
        //.dataTaskメソッドで登録されたリクエストが実行されて、Jsonのダウンロードが開始する
        task.resume()
    }
    
    //Cellの総数を返すdataSourceメソッド、必ず記述する
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return okashiList.count
    }
    
    //Cellに値を設定するdatasourceメソッド、必ず記述する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //今回表示を行う、cellオブジェクト(1行)を取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "okashiCell", for: indexPath)
        cell.textLabel?.text = okashiList[indexPath.row].name
        //お菓子画像を取得
        if let imageDate = try? Data(contentsOf: okashiList[indexPath.row].image){
            cell.imageView?.image = UIImage(data: imageDate)
        }
        return cell
    }
    
    //cellが選択された際に呼び出されるdelegateメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //ハイライト削除
        tableView.deselectRow(at: indexPath, animated: true)
        
        //SFSafariViewを開く
        let safariViewController = SFSafariViewController(url: okashiList[indexPath.row].link)
        
        //deledateの通知先を自分自身
        safariViewController.delegate = self
        
        //safariViewが開かれる
        present(safariViewController, animated: true, completion: nil)
    }
    
    //SafariViewが閉じられた時に呼ばれるdelegateメソッド
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        //SafariViewを閉じる
        dismiss(animated: true, completion: nil)
    }

}

