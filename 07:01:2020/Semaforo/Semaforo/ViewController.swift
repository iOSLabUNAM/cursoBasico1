//
//  ViewController.swift
//  Semaforo
//
//  Created by Pedro Antonio Vazquez Rodriguez on 07/01/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func greenButtonPressed(_ sender: Any) {
            performSegue(withIdentifier: "green", sender: nil)
    }
    
    @IBAction func yellowButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "yellow", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = segue.identifier
    }
    

}

