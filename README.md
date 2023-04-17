
# SwiftUI Gradient Blur

This package provides a simple and easy-to-use SwiftUI view for adding a blur effect similar to what you see on AppleTV and the App Store.




## Screenshots

![App Screenshot](https://raw.githubusercontent.com/unitedadityaa/SwiftUIGradientBlur/main/Sources/Screenshots/gradient1.png)

![App Screenshot](https://raw.githubusercontent.com/unitedadityaa/SwiftUIGradientBlur/main/Sources/Screenshots/gradient2.png)


## Installation

Install with SPM

```bash
.package(url: "https://github.com/unitedadityaa/SwiftUIGradientBlur.git", .branch("main"))
```
    
## Usage/Examples

```swift
import SwiftUIGradientBlur
import AVKit

//MARK:- For image
GradientImageView(image: Image("tetris") , height: UIScreen.main.bounds.height , width: UIScreen.main.bounds.width , style: .dark)

//MARK:- For Video
  let player = AVPlayer(url: Bundle.main.url(forResource: "video1", withExtension: "mp4")!)

GradientVideoView(player: player, height: UIScreen.main.bounds.height, width: UIScreen.main.bounds.height , style: .systemThinMaterialDark)
.onAppear(perform:{
    player.play()
})
```

