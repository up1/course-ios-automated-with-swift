
import XCTest

class DemoQuoteUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMyFirstUI() {
        
        let app = XCUIApplication()
        
        let beforeCount = app.tables.cells.count
        app.navigationBars["My Quote"].buttons["Add"].tap()
        
        let enterYourLoveQuoteTextField = app.textFields["Enter your love quote"]
        enterYourLoveQuoteTextField.tap()
        enterYourLoveQuoteTextField.typeText("test test")
        app.navigationBars["New Quote"].buttons["Save"].tap()
        let afterCount = app.tables.cells.count
        
        XCTAssertEqual(beforeCount, afterCount-1)
    }
    
    func testMySecondUI() {
        
        let app = XCUIApplication()
        
        let beforeCount = app.tables.cells.count
        app.navigationBars["My Quote"].buttons["Add"].tap()
        
        let enterYourLoveQuoteTextField = app.textFields["Enter your love quote"]
        enterYourLoveQuoteTextField.tap()
        enterYourLoveQuoteTextField.typeText("My new quote")
        app.navigationBars["New Quote"].buttons["Save"].tap()
        let newQuote = app.tables.cells.elementBoundByIndex(beforeCount).staticTexts.elementBoundByIndex(0).label
        
        XCTAssertEqual("My new quote", newQuote)
    }
    
}
