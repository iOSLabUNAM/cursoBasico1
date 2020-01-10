//
//  ViewController.swift
//  timer
//
//  Created by Pedro Antonio Vazquez Rodriguez on 10/01/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer?
    var runCount = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func boton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        }
    
    
    @objc func fireTimer(timer: Timer) {
        print("Timer fired!")
        print("seconds \(runCount)")
        runCount += 1
        
        if runCount == 60 {
            print("Paso un minuto")
            timer.invalidate()
        }
    }
}

