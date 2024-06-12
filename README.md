# IntroScreen

# Package URL
https://github.com/aabidDevit/IntroScreen

# Preview
![ezgif com-video-to-gif-converter](https://github.com/aabidDevit/IntroScreen/assets/84720808/b3b6a176-3774-4713-81f0-f36b0010baea)

# How to use?
-> Add package [IntroScreen](https://github.com/aabidDevit/IntroScreen) in your xcode <br>
-> Import IntroScreen

```swift
import SwiftUI
import IntroScreen

let introData = [
    IntroData(title: "This is title", desc: "This is Description", image: "twinlake"),
    IntroData(title: "This is title", desc: "This is Description", image: "twinlake"),
    IntroData(title: "This is title", desc: "This is Description", image: "twinlake")
]

struct ContentView: View {
    var body: some View {
        Intro(introImage: Image("twinlake"), titleLabel: Text("Title"), descriptionLabel: Text("Desc"), getStartedLabel: Text("Get Started"), introDataArray: introData, prevButtonLabel: Text("Prev"), nextButtonLabel: Text("Next"), skipButtonLabel: Text("Skip")) {
            // Skip Button Tap Event
            print("called skip")
        } getStartedButtonTapEvent: {
            // Get Started Button Tap Event
            print("called get started")
        }
    }
}
```
