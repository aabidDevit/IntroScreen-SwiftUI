//
//  File.swift
//  
//
//  Created by Aabid Khan on 07/06/24.
//

import Foundation
public struct IntroData: Identifiable {
  public var id = UUID()
  var title: String
  var desc: String
  var image: String
    
    public init(id: UUID = UUID(), title: String, desc: String, image: String) {
        self.id = id
        self.title = title
        self.desc = desc
        self.image = image
    }
}
