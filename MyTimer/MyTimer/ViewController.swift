//
//  ViewController.swift
//  MyTimer
//
//  Created by 井上滉貴 on 2018/12/09.
//  Copyright © 2018 井上滉貴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer : Timer?
    
    var count = 0
    
    let settingkey = "timer_value"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let settings = UserDefaults.standard
        settings.register(defaults: [settingkey : 10])
    }

    @IBOutlet weak var countDownLabel: UILabel!
    
    @IBAction func settingButtonAction(_ sender: Any) {
    }
    
    @IBAction func startButtonAction(_ sender: Any) {
    }
    
    @IBAction func stopButtonAction(_ sender: Any) {
    }
    
    func displayUpdate() -> Int {
        let settings = UserDefaults.standard
        
        let timerValue = settings.integer(forKey: settingkey)
        let remainCount = timerValue - count
        countDownLabel.text = "残り\(remainCount)秒"
        return remainCount
    }
    

}

