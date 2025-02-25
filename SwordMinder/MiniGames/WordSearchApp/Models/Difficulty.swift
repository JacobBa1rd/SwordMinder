//
//  Difficulty.swift
//  SwordMinder
//
//  Created by John Delano on 12/3/22.
//

import Foundation

enum Difficulty {
    case easy
    case medium
    case hard
    
    var placementTypes: [PlacementType] {
        switch self {
            case .easy: return [.leftRight, .rightLeft].shuffled()
            case .medium : return [.leftRight, .rightLeft, .upDown, .downUp].shuffled()
            case .hard : return PlacementType.allCases.shuffled()
        }
    }
}
