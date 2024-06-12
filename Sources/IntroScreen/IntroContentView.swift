//
//  SwiftUIView.swift
//  
//
//  Created by Aabid Khan on 07/06/24.
//

import SwiftUI

struct IntroContentView: View {
    
    let image: Image
    let titleText: Text
    let descText: Text
    
    var body: some View {
        
        VStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: K.Size.widthInProportionOfScreen(width: 350), height: K.Size.heightInProportionOfScreen(height: 350))
                .padding(.bottom, 15)
                
            titleText
                .padding(.bottom, 10)

            descText
                .frame(width: K.Size.widthInProportionOfScreen(width: 340))
                .multilineTextAlignment(.center)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 76)
    }
}

#Preview {
    IntroContentView(image: Image(""), titleText: Text(""), descText: Text(""))
}
