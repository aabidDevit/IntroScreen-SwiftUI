// The Swift Programming Language
// https://docs.swift.org/swift-book
//
//  Intro.swift
//  ECommereApp
//
//  Created by Aabid Khan on 02/05/24.
//

import SwiftUI

public typealias ButtonAction = (() -> ())?
@available(macOS 10.15, *)
public struct Intro: View {
    
    @State private var selectedTab = 0
    private let introDataArray: [IntroData]
    private let prevText: String
    private let nextText: String
    private let skipText: String
    private let getStartedText: String
    private let hidePageNumberLabel: Bool
    private let skipButtonAction: ButtonAction
    private let getStartedButtonAction: ButtonAction
    private let introFonts: IntroFonts?
    
    public init(introDataArray: [IntroData], getStartedText: String = "Get Started", prevText: String = "Prev", nextText: String = "Next", skipText: String = "Skip", hidePageNumberLabel: Bool = false, skipButtonTapEvent skipButtonAction:  ButtonAction, getStartedButtonTapEvent getStartedButtonAction: ButtonAction, introFonts: IntroFonts?) {
        self.getStartedText = getStartedText
        self.introDataArray = introDataArray
        self.prevText = prevText
        self.nextText = nextText
        self.skipText = skipText
        self.hidePageNumberLabel = hidePageNumberLabel
        self.skipButtonAction = skipButtonAction
        self.getStartedButtonAction = getStartedButtonAction
        self.introFonts = introFonts
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
                    skipButtonAction?()
                }, label: {
                    Text(skipText)
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
                .foregroundStyle(.black)
            }
            
            ZStack(alignment: .bottom) {
                
                TabView(selection: $selectedTab) {
                    ForEach(Array(introDataArray.enumerated()), id: \.element.id) { index, item in
                        IntroContentView(data: item, image: Image(item.imageAssetName), titleText: Text(item.titleText).font(introFonts?.titleFont), descText: Text(item.desc))
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
                            Text(prevText)
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    }
                    
                    
                    Button(action: {
                        if selectedTab < introDataArray.count - 1 {
                            selectedTab += 1
                        } else {
                            getStartedButtonAction?()
                        }
                    }, label: {
                        selectedTab == introDataArray.count - 1 ? Text(getStartedText) : Text(nextText)
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing)
                }
                .padding(.bottom, 15)
            }
        }
    }
}
