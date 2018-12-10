//
//  ViewController.swift
//  MyFirst
//
//  Created by 井上滉貴 on 2018/12/01.
//  Copyright © 2018 井上滉貴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //(1)ラベルに文字を入れる
        outputLabel.text = "Hello Swift!"
    }


    @IBOutlet weak var outputLabel: UILabel!
}

