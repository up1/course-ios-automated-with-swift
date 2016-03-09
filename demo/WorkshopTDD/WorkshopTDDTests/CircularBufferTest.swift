import XCTest

class CircularBufferTest: XCTestCase {

    func testInsertAShouldRemoveA() {
        let buffer = CircularBuffer()
        buffer.insert("A")
        XCTAssertEqual("A", buffer.remove())
    }
    
    func testInsertABShouldRemoveAB() {
        let buffer = CircularBuffer()
        buffer.insert("A")
        buffer.insert("B")
        XCTAssertEqual("A", buffer.remove())
        XCTAssertEqual("B", buffer.remove())
    }
    
    func testBufferEmptyAfterInsertABAndRemoveAB() {
        let buffer = CircularBuffer()
        buffer.insert("A")
        buffer.insert("B")
        buffer.remove()
        buffer.remove()
        XCTAssertTrue(buffer.empty())
    }
    
    func testBufferEmptyAfterInsertABAndRemoveAB2() {
        let buffer = CircularBuffer()
        buffer.insert("A")
        buffer.remove()
        buffer.insert("B")
        buffer.insert("C")
        buffer.remove()
        buffer.remove()
        XCTAssertTrue(buffer.empty())
    }

    
    func testBufferShouldBeEmptyAfterCreated() {
        let buffer = CircularBuffer()
        XCTAssertTrue(buffer.empty())
    }
    
    func testBufferShouldNotEmptyAfterInsertOneElement(){
        let buffer = CircularBuffer()
        buffer.insert("A")
        XCTAssertFalse(buffer.empty())
    }
    
    func testBufferHaveSizeOneAfterInsertOneElement() {
        let buffer = CircularBuffer()
        buffer.insert("A")
        XCTAssertEqual(1, buffer.size())
    }

}
