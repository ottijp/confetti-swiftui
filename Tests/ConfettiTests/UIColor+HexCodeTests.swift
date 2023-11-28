import XCTest
@testable import Confetti

final class UIColorHexCodeTests: XCTestCase {
  var red, green, blue, alpha: CGFloat!

  override func setUp() {
    red = 0
    green = 0
    blue = 0
    alpha = 0
  }

  func testWhite() throws {
    let color = UIColor(hex: "FFFFFF")!
    color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    XCTAssertEqual(red, 1.0)
    XCTAssertEqual(green, 1.0)
    XCTAssertEqual(blue, 1.0)
    XCTAssertEqual(alpha, 1.0)
  }

  func testBlack() throws {
    let color = UIColor(hex: "000000")!
    color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    XCTAssertEqual(red, 0.0)
    XCTAssertEqual(green, 0.0)
    XCTAssertEqual(blue, 0.0)
    XCTAssertEqual(alpha, 1.0)
  }

  func testSkyBlue() throws {
    let color = UIColor(hex: "#3366cc", alpha: 0.9)!
    color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    XCTAssertEqual(red, 0.2)
    XCTAssertEqual(green, 0.4)
    XCTAssertEqual(blue, 0.8)
    XCTAssertEqual(alpha, 0.9)
  }

  func testInvalidFormat() throws {
    XCTAssertNil(UIColor(hex: "white"))
  }
}
