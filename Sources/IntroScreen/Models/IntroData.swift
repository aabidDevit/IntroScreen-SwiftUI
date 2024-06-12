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
    let titleFont: Font?
    let descFont: Font?
    let skipButtonFont: Font?
    let prevButtonFont: Font?
    let nextButtonFont: Font?
    let pageCountFont: Font?
    
    public init(titleFont: Font?, descFont: Font?, skipButtonFont: Font?, prevButtonFont: Font?, nextButtonFont: Font?, pageCountFont: Font?) {
        self.titleFont = titleFont
        self.descFont = descFont
        self.skipButtonFont = skipButtonFont
        self.prevButtonFont = prevButtonFont
        self.nextButtonFont = nextButtonFont
        self.pageCountFont = pageCountFont
    }
}
