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

public struct IntroFonts {
    
    let titleStyle: TextStyle?
    let descFont: Font?
    let skipButtonFont: Font?
    let prevButtonFont: Font?
    let nextButtonFont: Font?
    let pageCountFont: Font?
    
    public init(titleStyle: TextStyle? = TextStyle(Font.largeTitle, Color.black), descFont: Font? = nil, skipButtonFont: Font? = nil, prevButtonFont: Font? = nil, nextButtonFont: Font? = nil, pageCountFont: Font? = nil) {
        self.titleStyle = titleStyle
        self.descFont = descFont
        self.skipButtonFont = skipButtonFont
        self.prevButtonFont = prevButtonFont
        self.nextButtonFont = nextButtonFont
        self.pageCountFont = pageCountFont
    }
}

public typealias TextStyle = (textFont: Font, textColor: Color)
