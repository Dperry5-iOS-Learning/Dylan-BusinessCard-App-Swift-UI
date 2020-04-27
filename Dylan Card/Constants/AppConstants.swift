//
//  AppConstants.swift
//  Dylan Card
//
//  Created by Dylan Perry on 4/26/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation
import SwiftUI

public enum AppConstants {}

public extension AppConstants {
    enum Colors {
        static let PRIMARY = Color(red: 0.075, green:0.125, blue: 0.078)
        static let SECONDARY = Color(red: 0.82, green:0.871, blue:0.871)
    }
    enum Fonts {
        static let TITLE = Font.custom("VT323-Regular", size: 40).bold()
        static let INFORMATION_BUTTON_TEXT = Font.custom("VT323-Regular", size: 30)
        static let SUBTITLE = Font.custom("VT323-Regular", size: 20).bold()
    }
}
