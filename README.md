### IntroScreen

### Package URL
https://github.com/aabidDevit/IntroScreen

### Preview
![ezgif com-video-to-gif-converter (3)](https://github.com/aabidDevit/IntroScreen-SwiftUI/assets/84720808/0272feee-5c76-406d-8097-d4f246986f01)

### How to use?
-> Add package [IntroScreen](https://github.com/aabidDevit/IntroScreen) in your xcode <br>
![ezgif com-video-to-gif-converter (2)](https://github.com/aabidDevit/IntroScreen-SwiftUI/assets/84720808/cbda341c-34c6-4999-8106-efa8b1d40da9)

### Code
```swift
import SwiftUI
import IntroScreen

let introData: [IntroData] = [
    IntroData(title: "Choose Products", desc: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.", image: "twinlake"),
    IntroData(title: "Make Payment", desc: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.", image: "twinlake"),
    IntroData(title: "Get Your Order", desc: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.", image: "twinlake")
]

struct ContentView: View {
    var body: some View {
        Intro(introDataArray: introData, skipButtonTapEvent: {
            
        }, getStartedButtonTapEvent: {
            
        }, introTextStyle: IntroTextStyle(titleTextStyle: .init(textFont: Font.title), descTextStyle: .init(textFont: .system(.title3, weight: .regular)),skipTextStyle: .init(textColor: .pink),  prevTextStyle: .init(textColor: .pink), nextTextStyle: .init(textColor: .pink), pageCountTextStyle: .init(textColor: .pink)))
    }
}
```
