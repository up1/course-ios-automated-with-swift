
import XCTest
@testable import WorkshopTDD

class WorkshopTDDTests: XCTestCase {
    
    func testSayHelloWorld() {
        //Arrange  Given
        let hello = HelloWorld()
        //Act   When
        let actualResult = hello.say()
        //Assert  Then
        XCTAssertEqual(
            "Hello World", actualResult,
            "Should display Hello World")
    }
    
    func testPerformanceExample() {
        self.measureBlock {
        }
    }
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}
