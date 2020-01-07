//
//  ViewController.swift
//  preguntados
//
//  Created by Pedro Antonio Vazquez Rodriguez on 04/01/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func waterButton(_ sender: Any) {
        view.backgroundColor = .green
    }
    @IBAction func sodiumButton(_ sender: Any) {
        view.backgroundColor = .red
    }
    
}

