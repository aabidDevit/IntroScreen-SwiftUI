//
//  SwiftUIView.swift
//  
//
//  Created by Aabid Khan on 07/06/24.
//

import SwiftUI

struct IntroContentView: View {
    
    var data: IntroData
    let imageInyourAsset: Image
    let titleText: Text
    let descText: Text
    
    var body: some View {
        
        VStack {
            imageInyourAsset
//            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: K.Size.widthInProportionOfScreen(width: 350), height: K.Size.heightInProportionOfScreen(height: 350))
                .padding(.bottom, 15)
                
//            Text(data.title)
//                .font(.custom(K.Fonts.themeExtraBold, size: 24))
            titleText
                .padding(.bottom, 10)
//            Text(data.desc)
            descText
                .frame(width: K.Size.widthInProportionOfScreen(width: 340))
//                .foregroundStyle(Color(.borderColorGray))
//                .font(.custom(K.Fonts.themeSemiBold, size: 14))
                .multilineTextAlignment(.center)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 76)
    }
}

#Preview {
    IntroContentView(data:IntroData(title: "Test", desc: "Desc", image: ""), imageInyourAsset: Image(""), titleText: Text(""), descText: Text(""))
}
