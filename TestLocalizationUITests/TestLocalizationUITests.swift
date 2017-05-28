//
//  TestLocalizationUITests.swift
//  TestLocalizationUITests
//
//  Created by Denny Mathew on 28/05/17.
//  Copyright © 2017 Denny Mathew. All rights reserved.
//

import XCTest

class TestLocalizationUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let switchLanguageButton = XCUIApplication().buttons["Switch Language"]
        
        snapshot("0001")
        switchLanguageButton.tap()
        
        snapshot("0002")
        switchLanguageButton.tap()
        
        snapshot("0003")
        switchLanguageButton.tap()
        
        snapshot("0004")
        switchLanguageButton.tap()
        
        snapshot("0005")
        switchLanguageButton.tap()
    }
    
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    
}
