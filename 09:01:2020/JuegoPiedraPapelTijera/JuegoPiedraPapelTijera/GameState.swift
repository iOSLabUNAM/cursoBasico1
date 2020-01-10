//
//  GameState.swift
//  JuegoPiedraPapelTijera
//
//  Created by iMac 5 on 9/24/19.
//  Copyright © 2019 iMac 5. All rights reserved.
//

import Foundation


enum GameState{
    case start
    case win
    case lose
    case tie
}

func controlFlux(player: Sign?, computer: Sign?) ->GameState{
    
    if player == nil || computer == nil{
        return .start
    } else if player == .rock && computer == .rock{
        return .tie
    } else if player == .rock && computer == .paper{
        return .lose
    } else if player == .rock && computer == .scissors{
        return .win
    } else if player == .paper && computer == .rock{
        return .win
    } else if player == .paper && computer == .paper{
        return .tie
    } else if player == .paper && computer == .scissors{
        return .lose
    } else if player == .scissors && computer == .rock{
        return .lose
    } else if player == .scissors && computer == .paper{
        return .win
    } else{
        return .tie
    }
}
