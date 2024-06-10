// The Swift Programming Language
// https://docs.swift.org/swift-book
//
//  Intro.swift
//  ECommereApp
//
//  Created by Aabid Khan on 02/05/24.
//

import SwiftUI

@available(macOS 10.15, *)
public struct Intro: View {
    
    @State private var selectedTab = 0
    @State private var selectedTabStr = "0"
    var prevButtonText: String = "Prev"
    var nextButtonText: String = "Next"
    var getStartedButtonText: String = "Get Started"
    var skipButtonText: String = "Skip"
    
    var introDataArray: [IntroData]
    
    public init(selectedTab: Int = 0, selectedTabStr: String = "0", prevButtonText: String, nextButtonText: String, getStartedButtonText: String, skipButtonText: String, introDataArray: [IntroData]) {
        self.selectedTab = selectedTab
        self.selectedTabStr = selectedTabStr
        self.prevButtonText = prevButtonText
        self.nextButtonText = nextButtonText
        self.getStartedButtonText = getStartedButtonText
        self.skipButtonText = skipButtonText
        self.introDataArray = introDataArray
    }
    
    public var body: some View {
            VStack(spacing: 0) {
                HStack {
                    Group {
                        Text("\(selectedTab + 1)")
                        +
                        Text("/\(introDataArray.count)")
                            .foregroundStyle(Color(Color.RGBColorSpace.sRGB, red: 160 / 255, green: 160 / 255, blue: 160 / 255, opacity: 1))
                    }
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.trailing)
                    
                    Button(action: {
                        
                    }, label: {
                        Text(skipButtonText)
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing)
                    .foregroundStyle(.black)
                }
                
                ZStack(alignment: .bottom) {
                     
                    TabView(selection: $selectedTabStr) {
                        ForEach(introDataArray) { item in
                            IntroContentView(data: item, imageInyourAsset: Image(item.imageAssetName), titleText: Text(item.titleText), descText: Text(item.desc))
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    .animation(.easeOut(duration: 0.2), value: selectedTab)
                    .onChange(of: selectedTabStr) {
                        selectedTab = Int(selectedTabStr) ?? 0
                    }
                    HStack() {
                        
                        if selectedTab > 0 {
                            Button(action: {
                                selectedTab -= 1
                                selectedTabStr = String(selectedTab)
                            }, label: {
                                Text(prevButtonText)
                            })
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                           
                            .foregroundStyle(Color(Color.RGBColorSpace.sRGB, red: 196 / 255, green: 196 / 255, blue: 196 / 255, opacity: 1))
                        }
                       
                        
                        Button(action: {
                            if selectedTab < introDataArray.count - 1 {
                                selectedTab += 1
                                selectedTabStr = String(selectedTab)
                            } else {
                               
                            }
                        }, label: {
                            selectedTab == introDataArray.count - 1 ? Text(getStartedButtonText) : Text(nextButtonText)
                        })
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing)
                       
                        .foregroundStyle(Color(.pink))
                    }
                    .padding(.bottom, 15)
                }
            }
    }
}

//#Preview {
//    Intro(introDataArray: [IntroData(title: "aaa", desc: "asdasd", image: ""), IntroData(title: "test", desc: "adsads", image: "")])
//}
