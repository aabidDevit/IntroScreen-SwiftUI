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
    var introDataArray: [IntroData]
    var prevButtonLabel: Text
    var nextButtonLabel: Text
    var skipButtonLabel: Text
    var getStartedButtonLabel: Text
    var titleLabel: Text
    var descriptionLabel: Text
    var hidePageNumberLabel: Bool
    
    public init(titleLabel: Text, descriptionLabel: Text, selectedTab: Int = 0, getStartedLabel: Text, introDataArray: [IntroData], prevButtonLabel: Text, nextButtonLabel: Text, skipButtonLabel: Text, hidePageNumberLabel: Bool = false) {
        self.titleLabel = titleLabel
        self.descriptionLabel = descriptionLabel
        self.selectedTab = selectedTab
        self.getStartedButtonLabel = getStartedLabel
        self.introDataArray = introDataArray
        self.prevButtonLabel = prevButtonLabel
        self.nextButtonLabel = nextButtonLabel
        self.skipButtonLabel = skipButtonLabel
        self.hidePageNumberLabel = hidePageNumberLabel
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            HStack {
                if !hidePageNumberLabel {
                    Group {
                        Text("\(selectedTab + 1)")
                        +
                        Text("/\(introDataArray.count)")
                            .foregroundStyle(Color(Color.RGBColorSpace.sRGB, red: 160 / 255, green: 160 / 255, blue: 160 / 255, opacity: 1))
                    }
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.trailing)
                }
                
                
                Button(action: {
                    
                }, label: {
                    skipButtonLabel
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
                .foregroundStyle(.black)
            }
            
            ZStack(alignment: .bottom) {
                
                TabView(selection: $selectedTab) {
                    ForEach(Array(introDataArray.enumerated()), id: \.element.id) { index, item in
                        IntroContentView(data: item, imageInyourAsset: Image(item.imageAssetName), titleText: titleLabel, descText: descriptionLabel)
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
                            prevButtonLabel
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    }
                    
                    
                    Button(action: {
                        if selectedTab < introDataArray.count - 1 {
                            selectedTab += 1
                        } else {
                            
                        }
                    }, label: {
                        selectedTab == introDataArray.count - 1 ? getStartedButtonLabel : nextButtonLabel
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing)
                }
                .padding(.bottom, 15)
            }
        }
    }
}
