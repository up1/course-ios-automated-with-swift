//
//  DemoQuoteTests.swift
//  DemoQuoteTests
//
//  Created by somkiat puisungnoen on 10/5/2558 BE.
//  Copyright © 2558 ___UP1___. All rights reserved.
//

import XCTest
@testable import DemoQuote

class DemoQuoteTests: XCTestCase {
    
    func testViewModelShoukdInvalid() {
        let stubDelegate = StubDelegate()
        let mv = NewQuoteViewModel(delegate: stubDelegate)
        mv.content = ""
        mv.saveNewQuote()
        XCTAssertEqual(2, stubDelegate.calledCount)
    }
    
    
}
