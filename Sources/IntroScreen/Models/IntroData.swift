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
    let descFont: Style?
    let skipButtonFont: Style?
    let prevButtonFont: Style?
    let nextButtonFont: Style?
    let pageCountFont: Style?
    
    public init(titleText: Style, descFont: Style? = nil, skipButtonFont: Style? = nil, prevButtonFont: Style? = nil, nextButtonFont: Style? = nil, pageCountFont: Style? = nil) {
        self.titleText = titleText
        self.descFont = descFont
        self.skipButtonFont = skipButtonFont
        self.prevButtonFont = prevButtonFont
        self.nextButtonFont = nextButtonFont
        self.pageCountFont = pageCountFont
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

