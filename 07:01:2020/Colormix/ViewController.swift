//
//  ViewController.swift
//  Colormix
//
//  Created by MacBook on 1/7/20.
//  Copyright © 2020 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwich: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        restart()
        updateColor()
    }
    

    func updateColor(){
        var red : CGFloat = 0
        var green : CGFloat = 0
        var blue : CGFloat = 0
        
        red = CGFloat(redSlider.value)
        green = CGFloat(greenSlider.value)
        blue = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    func restart(){
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
    }

    @IBAction func redSliderChanged(_ sender: Any) {
        updateColor()
    }
    @IBAction func greenSliderChanged(_ sender: Any) {
        updateColor()
    }
    @IBAction func blueSliderChanged(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func redSwitchChange(_ sender: Any) {
        if redSwitch.isOn{
            redSlider.isEnabled = true
        }else {
            redSlider.isEnabled = false
        }
    }
    
    @IBAction func greenSwitchCahnge(_ sender: Any) {
        if greenSwitch.isOn{
            greenSlider.isEnabled = true
        }else {
            greenSlider.isEnabled = false
        }
    }
    
    @IBAction func blueSwichChange(_ sender: Any) {
        if blueSwich.isOn{
            blueSlider.isEnabled = true
        }else {
            blueSlider.isEnabled = false
        }
    }
}

