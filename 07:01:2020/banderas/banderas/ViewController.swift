//
//  ViewController.swift
//  banderas
//
//  Created by Pedro Antonio Vazquez Rodriguez on 07/01/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
    
    var ciudades = [String]()
    var respuestaCorrecta = 0
    var score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        boton1.layer.borderWidth = 1
        boton1.layer.borderColor = UIColor.lightGray.cgColor
        
        boton2.layer.borderWidth = 1
        boton2.layer.borderColor = UIColor.lightGray.cgColor
        
        boton3.layer.borderWidth = 1
        boton3.layer.borderColor = UIColor.lightGray.cgColor
        
        ciudades.append("estonia")
        ciudades += ["france","germany","ireland","italy","monaco","nigeria","poland","russia","spain","uk","us"]
        pregunta(action: nil)
    }
    func pregunta(action:UIAlertAction!) {
        ciudades = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: ciudades) as! [String]
        boton1.setImage(UIImage(named: ciudades[0]), for: .normal)
        boton2.setImage(UIImage(named: ciudades[1]), for: .normal)
        boton3.setImage(UIImage(named: ciudades[2]), for: .normal)
        respuestaCorrecta = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
        title = ciudades[respuestaCorrecta].uppercased()
    }
    
    @IBAction func presionarBoton(_ sender: UIButton) {
        var title :String
        if sender.tag == respuestaCorrecta{
            title = "Correcto"
            score += 1
        }else {
            title = "Incorrecto"
            score -= 1
        }
        
        let  ac = UIAlertController(title: title, message: "Tu Score es \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continuar", style: .default, handler: pregunta))
        present(ac,animated: true)
        
        
    }
    
}

