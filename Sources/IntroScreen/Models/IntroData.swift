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
    private let titleFont: Font?
    
    public init(titleFont: Font?) {
        self.titleFont = titleFont
    }
}
