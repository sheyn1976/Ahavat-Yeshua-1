//
//  Runner.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 6/2/25.
//

import XCTest

class Runner: XCTestCase {
    let app: XCUIApplication = .init()
    
    // Before each test
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    // After each test
    override func tearDownWithError() throws {}
}
