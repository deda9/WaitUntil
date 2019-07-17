import XCTest

extension XCTestCase {
    func waitUntil(timeout: TimeInterval = 5, done: @escaping (@escaping () -> Void) -> Void) {
        let expectation = self.expectation(description: "fromAtoB expectation")
        done {
            expectation.fulfill()
        }
        waitForExpectations(timeout: timeout, handler: nil)
    }
}
