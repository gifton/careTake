//
//  Record.swift
//  CareTake
//
//  Created by Dev on 11/17/18.
//  Copyright © 2018 Wesaturate. All rights reserved.
//

import Foundation
import UIKit

struct Record {
    let painRating: Int
    let symptoms: [String]
    var foodEaten: [String] = []
    var ouncesOfWater: Int = 0
    var minutesExcersized: Int = 0
    var irregularBowelMovement: Bool = false
    var bowelMovementDescription: String = ""
    
    init(symptoms: [String], painRating: Int) {
        self.symptoms = symptoms
        self.painRating = painRating
    }
    init (symptoms: [String], painRating: Int, foodEaten: [String],
          ouncesOfWater: Int, minutesExcersized: Int, irregularBowelMovement: Bool,
          bowelMovementDescription: String) {
        self.init(symptoms: symptoms, painRating: painRating)
        self.foodEaten = foodEaten
        self.ouncesOfWater = ouncesOfWater
        self.minutesExcersized = minutesExcersized
        self.irregularBowelMovement = irregularBowelMovement
        self.bowelMovementDescription = bowelMovementDescription
    }
}

