//
//  UITestPracticeAppUITests.swift
//  UITestPracticeAppUITests
//
//  Created by Sida Nakrosyte on 18/03/2019.
//  Copyright © 2019 Sida Nakrosyte. All rights reserved.
//

import XCTest

class UITestPracticeAppUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func tapOnKey(_ key: String) {
        let key = app.keys[key]
        key.tap()
    }

    func testExample() {
        
        tapOnKey("j")
        tapOnKey("o")
        tapOnKey("h")
        tapOnKey("n")

        app.buttons["tap me"].tap()
 
        let label = app.staticTexts["MyLabel"].label
        XCTAssertEqual(label, "Hello john")
        XCTAssertNotEqual(label, "Hello")
        
        let buttonsCount = app.buttons.count
        XCTAssertEqual(buttonsCount, 1)
    }

}
