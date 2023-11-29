# Confetti

This is a SwiftUI view that displays confetti.
You can use this package via SPM (Swift Package Manager).

**This is beta release. Some of implementation might be changed incompatibly.**

https://github.com/ottijp/confetti-swiftui/assets/7289233/7054a6aa-fd02-4129-88d6-8709b43ee456

Confetto are generated with random shape/scale/angle every time.

## Requirement (tested on)

* Xcode 15.0
* iOS 15+

## How to use

Add this SPM package to your Xcode project.

1. `File` > `Add Package Dependencies...`
2. Input `https://github.com/ottijp/confetti-swiftui` in search box.
3. Select `confetti-swiftui`.
4. Select `Dependency Rule` to `Up to Next Major Version`. (optional, recommended)

![add-package](https://github.com/ottijp/confetti-swiftui/assets/7289233/0f972f37-3026-49b3-ad6c-6d9b2982e43a)

Import `Confetti` module and add `ConfettiView` on your view stack with ZStack.

```swift
import SwiftUI
import Confetti

struct SampleView1: View {
  var body: some View {
    ZStack {
      Text("Confetti")
      ConfettiView()
    }
  }
}
```

## Configuration

### Display timing

You can controll display timing like bellow.

```swift
import SwiftUI
import Confetti

struct SampleView2: View {
  @State private var isConffetiActive = false

  var body: some View {
    ZStack {
      VStack {
        Spacer()
        HStack {
          Toggle(isOn: $isConffetiActive) {
            Text("confetti")
          }
          .frame(width: 150)
        }
      }

      if isConffetiActive {
        ConfettiView()
      }
    }
  }
}
```

### Emission duration

You can set the emission duration with `emissionDuration` property.
Default duration is 2 seconds.

```swift
// emit for 5 seconds
ConfettiView(emissionDuration: 5.0)
```

### License

MIT
