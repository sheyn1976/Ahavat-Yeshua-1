//
//  Runner.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/4/25.
//

import XCTest

class Runner: XCTestCase {
    let app: XCUIApplication = .init()
   
    //Before each test
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    // after each test
    override func tearDownWithError() throws {}
}
    
