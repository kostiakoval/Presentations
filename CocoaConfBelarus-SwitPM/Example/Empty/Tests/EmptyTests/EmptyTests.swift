import XCTest
@testable import Empty

class EmptyTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Empty().text, "Hello, World!")
    }


    static var allTests : [(String, (EmptyTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
