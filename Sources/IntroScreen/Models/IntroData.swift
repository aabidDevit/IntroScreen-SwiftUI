//
//  File.swift
//  
//
//  Created by Aabid Khan on 07/06/24.
//

import Foundation
import SwiftUI

public struct IntroData: Identifiable {
    public var id: UUID
    public var titleText: String
    public var desc: String
    public var imageAssetName: String
    
    public init(id: UUID = UUID(), title: String, desc: String, image: String) {
        self.id = id
        self.titleText = title
        self.desc = desc
        self.imageAssetName = image
    }
}

public struct IntroText {
    
    let titleText: Style?
    let descText: Style?
    let skipText: Style?
    let prevText: Style?
    let nextText: Style?
    let pageCountText: Style?
    
    public init(titleText: Style, descText: Style? = nil, skipText: Style? = nil, prevText: Style? = nil, nextText: Style? = nil, pageCountText: Style? = nil) {
        self.titleText = titleText
        self.descText = descText
        self.skipText = skipText
        self.prevText = prevText
        self.nextText = nextText
        self.pageCountText = pageCountText
    }
}

public struct Style {
    public let textFont: Font
    public let textColor: Color
    
    public init(textFont: Font = Font.headline, textColor: Color = Color.black) {
        self.textFont = textFont
        self.textColor = textColor
    }
}

