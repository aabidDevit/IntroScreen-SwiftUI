//
//  File.swift
//  
//
//  Created by Aabid Khan on 07/06/24.
//

import Foundation
import UIKit
import SwiftUI

extension UIScreen {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

public struct IntroFont: ViewModifier {
    private let font: Font
    private let foregroundColor: Color
    
    init(size: CGFloat, foregroundColor: Color) {
        self.font = .system(size: UIFontMetrics.default.scaledValue(for: size))
        self.foregroundColor = foregroundColor
    }

    init(font: Font, foregroundColor: Color) {
        self.font = font
        self.foregroundColor = foregroundColor
    }

    public func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(foregroundColor)
    }
}

