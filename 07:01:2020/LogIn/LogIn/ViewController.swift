//
//  ViewController.swift
//  LogIn
//
//  Created by Pedro Antonio Vazquez Rodriguez on 07/01/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var textoUsuario: UITextField!
    var nombre = "Yoco"
    var contrasena = "123456789"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func entrarPresionado(_ sender: Any) {
        let usuario = textoUsuario.text
        let pass = passwordText.text
        
        if usuario == nombre && pass == contrasena{
            performSegue(withIdentifier: "Correcto", sender: nil)
        }else{
            performSegue(withIdentifier: "Incorrecto", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = segue.identifier
    }
}

