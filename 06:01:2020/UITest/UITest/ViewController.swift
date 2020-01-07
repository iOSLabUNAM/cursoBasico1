//
//  ViewController.swift
//  UITest
//
//  Created by Pedro Antonio Vazquez Rodriguez on 06/01/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var valorSlider : Float = 0.0
    var valorSwitch : Bool = false
    var texto : String? = ""
    
    @IBOutlet weak var apagador: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var cuadroTexto: UITextField!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func presionarBoton(_ sender: Any) {
        valorSlider = slider.value
        valorSwitch = apagador.isOn
        texto = cuadroTexto.text
        print(valorSlider)
        print(valorSwitch)
        print(texto!)
        if valorSwitch{
            label.text = texto!
        }
    }
    

}

