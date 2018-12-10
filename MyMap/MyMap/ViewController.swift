//
//  ViewController.swift
//  MyMap
//
//  Created by 井上滉貴 on 2018/12/03.
//  Copyright © 2018 井上滉貴. All rights reserved.
//

import UIKit
import MapKit
                                   //下のUITextFieldDelegateはプロトコル UITextFieldのDelegate
class ViewController: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //デリゲートの通知先を自分自身(self)に設定
        inputText.delegate = self
    }

    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var dispMap: MKMapView!
    
    //UITextFieldDelegateによって以下のメソッドが実行。
    //検索ボタンをタップするとじ実行される
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //入力完了後にキーボードを閉じる
        textField.resignFirstResponder()
        
        //検索窓で入力された文字列を取り出す
        if let searchKey = textField.text{
            print(searchKey)
            
            //インスタンス化
            //CLGeocoderを使うと緯度経度から住所を検索できる。またその逆もできる。
            let geocoder = CLGeocoder()
            
            //入力された内容文字から位置情報を取得する
            geocoder.geocodeAddressString(searchKey, completionHandler: { (placemarks,error)in
                if let unwrapPlacemarks = placemarks {
                    if let firstPlacemark = unwrapPlacemarks.first {
                        if let location = firstPlacemark.location {
                            let targetCoordinate = location.coordinate
                            print(targetCoordinate)
                            
                            //MKPointAnnotationインスタンスを所得し、ピンを作成
                            let pin = MKPointAnnotation()
                            
                            //targetCoordinateを代入
                            pin.coordinate = targetCoordinate
                            
                            //Pinのタイトルか(ピンの下)に表示
                            pin.title = searchKey
                            
                            //Map上にPinを置く。
                            self.dispMap.addAnnotation(pin)
                            
                            //緯度経度を中心に半径500mのは範囲を表示
                            self.dispMap.region = MKCoordinateRegion(center: targetCoordinate, latitudinalMeters: 500.0, longitudinalMeters: 500.0)
                        }
                    }
                }
            })
        }
        
        return true
    }
    
    

    @IBAction func changeMapButton(_ sender: Any) {
        if dispMap.mapType == .standard{
            dispMap.mapType = .satellite
        }else if dispMap.mapType == .satellite{
            dispMap.mapType = .hybrid
        }else if dispMap.mapType == .hybrid{
            dispMap.mapType = .satelliteFlyover
        }else if dispMap.mapType == .hybridFlyover{
            dispMap.mapType = .mutedStandard
        }else if dispMap.mapType == .satelliteFlyover{
            dispMap.mapType = .hybridFlyover
        }else {
            dispMap.mapType = .standard
        }
    }
}

