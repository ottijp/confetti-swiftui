import SwiftUI
import SpriteKit

public struct ConfettiView: View {
  // Confetti emission duration in seconds.
  private var emissionDuration: Double

  /// Creates a new confetti view.
  /// - Parameters:
  ///   - emissionDuration: Confetti emission duration in seconds. Duration for all confetto to fall isn't controllable. It's depends on confetto falling speed that are random.
  public init(emissionDuration: Double = 2.0) {
    self.emissionDuration = emissionDuration
  }

  public var body: some View {
    GeometryReader {
      SpriteView(scene: ConfettiScene(size: $0.size, emissionDuration: emissionDuration), options: [.allowsTransparency])
        .background(.clear)
        .ignoresSafeArea()
        .allowsHitTesting(false)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ConfettiView(emissionDuration: 120.0)
  }
}
