

import XCTest

class FizzBuzzTest: XCTestCase {
    
    let fizzBuzz = FizzBuzz()    
    
    func testShouldSay1() {
        let result = fizzBuzz.say(1)
        XCTAssertEqual("1", result,
                       "Should say 1")
    }
    
    func testShouldSay2() {
        let result = fizzBuzz.say(2)
        XCTAssertEqual("2", result,
                       "Should say 2")
    }
    
    func testShouldSayFIZZ() {
        let result = fizzBuzz.say(3)
        XCTAssertEqual("FIZZ", result,
                       "Should say FIZZ")
    }
    
    func testShouldSayFIZZwith6() {
        let result = fizzBuzz.say(6)
        XCTAssertEqual("FIZZ", result,
                       "Should say FIZZ")
    }

    
    

}
