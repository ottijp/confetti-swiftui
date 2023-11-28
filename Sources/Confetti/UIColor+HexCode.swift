import UIKit

extension UIColor {
  /// create new object with hex string
  convenience init?(hex: String, alpha: CGFloat = 1.0) {
    // delete "#" prefix
    let hexNorm = hex.hasPrefix("#") ? String(hex.dropFirst(1)) : hex

    // scan each byte of RGB respectively
    let scanner = Scanner(string: hexNorm)
    var color: UInt64 = 0
    if scanner.scanHexInt64(&color) {
      let red = CGFloat((color & 0xFF0000) >> 16) / 255.0
      let green = CGFloat((color & 0x00FF00) >> 8) / 255.0
      let blue = CGFloat(color & 0x0000FF) / 255.0
      self.init(red: red, green: green, blue: blue, alpha: alpha)
    } else {
      // invalid format
      return nil
    }
  }
}
