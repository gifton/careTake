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
    let pain_tolerance: Int
    let symptoms: [String]
    var fatigue: Int = 0
    var foodEaten: [String] = []
    var ouncesOfWater: Int = 0
    var minutesExcersized: Int = 0
    var irregularBowelMovement: Bool = false
    var bowelMovementDescription: String = ""
    
    init(symptoms: [String], pain_tolerance: Int) {
        self.symptoms = symptoms
        self.pain_tolerance = pain_tolerance
    }
    init (symptoms: [String], pain_tolerance: Int, foodEaten: [String],
          ouncesOfWater: Int, minutesExcersized: Int, irregularBowelMovement: Bool,
          bowelMovementDescription: String) {
        self.init(symptoms: symptoms, pain_tolerance: pain_tolerance)
        self.foodEaten = foodEaten
        self.ouncesOfWater = ouncesOfWater
        self.minutesExcersized = minutesExcersized
        self.irregularBowelMovement = irregularBowelMovement
        self.bowelMovementDescription = bowelMovementDescription
    }
}
