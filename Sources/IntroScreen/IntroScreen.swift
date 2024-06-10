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
    var prevButtonText: String
    var nextButtonText: String
    var getStartedButtonText: String
    var skipButtonText: String
    var introDataArray: [IntroData]
    var prevButton: Button<Text>
    var nextButton: Button<Text>
    
    public init(selectedTab: Int = 0, prevButtonText: String = "Prev", nextButtonText: String = "Next", getStartedButtonText: String = "Get Started", skipButtonText: String = "Skip", introDataArray: [IntroData], prevButton: Button<Text>, nextButton: Button<Text>) {
        self.selectedTab = selectedTab
        self.prevButtonText = prevButtonText
        self.nextButtonText = nextButtonText
        self.getStartedButtonText = getStartedButtonText
        self.skipButtonText = skipButtonText
        self.introDataArray = introDataArray
        self.prevButton = prevButton
        self.nextButton = nextButton
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
                     
                    TabView(selection: $selectedTab) {
                        ForEach(Array(introDataArray.enumerated()), id: \.element.id) { index, item in
                            IntroContentView(data: item, imageInyourAsset: Image(item.imageAssetName), titleText: Text(item.titleText), descText: Text(item.desc))
                                .tag(index)
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    .animation(.easeOut(duration: 0.2), value: selectedTab)
                    
                    HStack() {
                        
                        if selectedTab > 0 {
                            Button(action: {
                                selectedTab -= 1
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
