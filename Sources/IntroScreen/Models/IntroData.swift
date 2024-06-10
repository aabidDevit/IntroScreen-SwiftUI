//
//  File.swift
//  
//
//  Created by Aabid Khan on 07/06/24.
//

import Foundation
public struct IntroData: Identifiable {
    public var id: UUID
    var titleText: String
    var desc: String
    var imageAssetName: String
    
    public init(id: UUID = UUID(), title: String, desc: String, image: String) {
        self.id = id
        self.titleText = title
        self.desc = desc
        self.imageAssetName = image
    }
}
