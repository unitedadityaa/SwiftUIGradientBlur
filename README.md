
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

## License

This package is released under the MIT license, as shown below.

Copyright © 2020 Apple Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
