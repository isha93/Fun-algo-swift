//
//  examUITests.swift
//  examUITests
//
//  Created by isa nur fajar on 08/05/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import XCTest

class examUITests: XCTestCase {

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

    func testUI() {
        
        let val1 = "2"
        let val2 = "3"
        
        let app = XCUIApplication()
        app.buttons["Sum And Multiply"].tap()
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element
        element.children(matching: .textField).element(boundBy: 0).tap()
        let textField = element.children(matching: .textField).element(boundBy: 1)
        textField.tap()
        textField.tap()
        app.buttons["Summary"].tap()
        app.buttons["Multyply"].tap()
        app.navigationBars["Sumarry And Multiply"].buttons["< Back"].tap()
        
        
        app.buttons["Prime Number"].tap()
        
        let textField2 = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element
        textField2.tap()
        
        let checkButton = app.buttons["Check"]
        checkButton.tap()
        app.navigationBars["Prime Number"].buttons["< Back"].tap()
        app.buttons["Fibonacci Sequence"].tap()
        textField2.tap()
        checkButton.tap()
        app.navigationBars["Fibonacci Sequence"].buttons["< Back"].tap()
        
        
    }

}
