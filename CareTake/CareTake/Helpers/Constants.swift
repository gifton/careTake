//
//  Constants.swift
//  CareTake
//
//  Created by Dev on 11/17/18.
//  Copyright © 2018 Wesaturate. All rights reserved.
//

import Foundation
import UIKit

enum fontSize: CGFloat {
    case xXSmall = 8.0
    case xSmall = 10.0
    case small = 12.0
    case medium = 14.0
    case large = 16.0
    case xLarge = 18.0
    case xXLarge = 20.0
    case xXXLarge = 26.0
    case xXXXLarge = 32.0
}

struct ScreenSize {
    static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCALE = UIScreen.main.scale
    static let SCREEN_SIZE = UIScreen.main.bounds
}
