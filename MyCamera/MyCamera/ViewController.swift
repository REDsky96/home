//
//  ViewController.swift
//  MyCamera
//
//  Created by 井上滉貴 on 2018/12/16.
//  Copyright © 2018 井上滉貴. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var pictureImage: UIImageView!
    
    @IBAction func cameraButtonAction(_ sender: Any) {
        //isSourceTypeAvailableを使ってカメラが利用可能かどうかチェックする
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("カメラは利用できます")
            let imagePickerController = UIImagePickerController()
            imagePickerController.sourceType = .camera
            imagePickerController.delegate = self
            //presentを表記することによってカメラの画面が表示される
            //またモーダルビューで表示（モーダルビューとはプログラムを実行すると、新しい画面がオーバーラッピングするように画面遷移すること）
            present(imagePickerController, animated: true, completion: nil)
        }else {
            print("カメラは利用できません")
        }
    }
    
    @IBAction func SNSButtonAction(_ sender: Any) {
        if let shareImage = pictureImage.image{
            let shareItem = [shareImage]
            let controller = UIActivityViewController(activityItems: shareItem, applicationActivities: nil)
            controller.popoverPresentationController?.sourceView = view
            present(controller, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //any型をUIImageにキャストする
        pictureImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        //モーダルビューを閉じる
        dismiss(animated: true, completion: nil)
    }
}

