//
//  ViewController.swift
//  JuegoPiedraPapelTijera
//
//  Created by iMac 5 on 9/24/19.
//  Copyright © 2019 iMac 5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    var playerSelection : Sign? = nil
    var computerSelection : Sign? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func restartPressed(_ sender: Any) {
        playerSelection = nil
        computerSelection = nil
        updateUI()
    }
    
    func updateUI(){
        let state = controlFlux(player: playerSelection, computer: computerSelection)
        switch state{
            case .start:
                restartButton.isHidden = true
                computerLabel.text = "🤖"
                stateLabel.text = "Piedra, papel o tijera?"
                rockButton.isHidden = false
                scissorsButton.isHidden = false
                paperButton.setTitle("🤚", for: .normal)
                view.backgroundColor = .gray
        case .win:
            restartButton.isHidden = false
            computerLabel.text = returnEmoji(selection: computerSelection!)
            stateLabel.text = "Ganaste"
            rockButton.isHidden = true
            scissorsButton.isHidden = true
            paperButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .green
        case .lose:
            computerLabel.text = returnEmoji(selection: computerSelection!)
            stateLabel.text = "Perdiste"
            rockButton.isHidden = true
            scissorsButton.isHidden = true
            paperButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .red
        
        case .tie:
            computerLabel.text = returnEmoji(selection: computerSelection!)
            stateLabel.text = "Empataste"
            rockButton.isHidden = true
            scissorsButton.isHidden = true
            paperButton.setTitle(returnEmoji(selection: playerSelection!), for: .normal)
            view.backgroundColor = .white
        }
    }
    
    func returnEmoji(selection: Sign) -> String{
        switch selection {
        case .rock:
            return "👊"
        case .paper:
            return "🤚"
        case .scissors:
            return "✌️"
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton){
        if controlFlux(player: playerSelection, computer: computerSelection) == .start{
            computerSelection = randomSign()
            let selection = sender.currentTitle
            switch selection{
            case "👊":
                playerSelection = .rock
            case "🤚":
                playerSelection = .paper
            case "✌️":
                playerSelection = .scissors
            default:
                playerSelection = nil
            }
            updateUI()
        }
    }
    
}

