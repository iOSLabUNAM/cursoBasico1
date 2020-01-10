//
//  Sign.swift
//  JuegoPiedraPapelTijera
//
//  Created by iMac 5 on 9/24/19.
//  Copyright © 2019 iMac 5. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign{
    
    let sign = randomChoice.nextInt()
    if sign == 0{
        return .rock
    } else if sign == 1{
        return .paper
    } else{
        return .scissors
    }
}

enum Sign{
    case rock
    case paper
    case scissors
}
