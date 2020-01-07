//
//  ViewController.swift
//  Lampara
//
//  Created by Pedro Antonio Vazquez Rodriguez on 06/01/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var lightOn = true
    
    @IBOutlet weak var boton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func presionarBoton(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
        encenderFlash(on: lightOn)
    }
    
    func updateUI(){
        if lightOn{
            view.backgroundColor = UIColor.white
            boton.setTitle("Apagar", for: .normal)
        } else{
            view.backgroundColor = .black
            boton.setTitle("Encender", for: .normal)
        }
        
    }

    func encenderFlash(on: Bool){
        guard  let device = AVCaptureDevice.default(for: .video) else {return}
        if device.hasTorch{
            do{
                try device.lockForConfiguration()
                if on == true{
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }
                device.unlockForConfiguration()
            }catch{
                print("Lampara no puede encender")
            }
        }else {
            print("Lampara no disponible")
        }
        
    }
}

