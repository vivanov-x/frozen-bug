import XCTest
@testable import iosApp

class iosAppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let foo = Foo(
            field: "fromSwift",
            barsList: [Bar(field: "bar1swift"), Bar(field: "bar1swift")
        ])
        
        let processor = Processor()
        processor.execute(foo: foo)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
