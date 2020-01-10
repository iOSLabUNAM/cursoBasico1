//
//  ControlState.swift
//  JuegoPiedraPapelTijera
//
//  Created by Yocoyani Pérez on 9/30/19.
//  Copyright © 2019 iMac 5. All rights reserved.
//

import Foundation

enum ControlState{
    case start
    case win
    case lose
    case tie
}

func controlFlux(player : Sign?, computer : Sign?)-> ControlState{
    if player == nil || computer == nil{
        return .start
    }else if player == .rock && computer == .scissors{
        return .win
    } else if player == .paper && computer == .rock{
        return .win
    } else if player == .scissors && computer == .paper{
        return .win
    } else if player == .rock && computer == .paper{
        return .lose
    } else if player == .paper && computer == .scissors{
        return .lose
    } else if player == .scissors && computer == .rock{
        return .lose
    } else{
        return .tie
    }
}
