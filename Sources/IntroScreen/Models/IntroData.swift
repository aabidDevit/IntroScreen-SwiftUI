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

public struct IntroTextStyle {
    
    let titleTextStyle: Style?
    let descTextStyle: Style?
    let skipTextStyle: Style?
    let prevTextStyle: Style?
    let nextTextStyle: Style?
    let pageCountTextStyle: Style?
    
    public init(titleTextStyle: Style?, descTextStyle: Style? = nil, skipTextStyle: Style? = nil, prevTextStyle: Style? = nil, nextTextStyle: Style? = nil, pageCountTextStyle: Style? = nil) {
        self.titleTextStyle = titleTextStyle
        self.descTextStyle = descTextStyle
        self.skipTextStyle = skipTextStyle
        self.prevTextStyle = prevTextStyle
        self.nextTextStyle = nextTextStyle
        self.pageCountTextStyle = pageCountTextStyle
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

