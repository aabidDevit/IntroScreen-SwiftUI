//
//  File.swift
//  
//
//  Created by Aabid Khan on 07/06/24.
//

import Foundation
import SwiftUI
import UIKit

struct K {
    
    static let baseWidh = 375.0
    static let baseHeight = 812.0
    
    struct Size {
        
        static let buttonWidth = (UIScreen.screenWidth * 85) / 100
        static let buttonHeight = 55.0
        
        static func widthInProportionOfScreen(width: CGFloat) -> CGFloat {
            let percent = (width * 100) / K.baseWidh
            return (percent * UIScreen.screenWidth) / 100
        }
        
        static func heightInProportionOfScreen(height: CGFloat) -> CGFloat {
            let percent = (height * 100) / K.baseHeight
            return (percent * UIScreen.screenHeight) / 100
        }
    }
}
