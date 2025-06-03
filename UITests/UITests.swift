//
//  UITests.swift
//  UITests
//
//  Created by Ilia Pavlov on 2/22/24.
//

import XCTest

class UITests: Runner {
    // MARK: Static Texts
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var bibleStudyScreenTitle: XCUIElement = app.staticTexts[" Growth in Faith"]
    
    // MARK: Buttons
    lazy var exploreScreenQuizCell: XCUIElement = app.buttons["📖 Faith-Based Quiz"]
    
    // MARK: TextFileds
    lazy var feedScreenSearchFeild: XCUIElement = app.textFields.firstMatch
    
    // MARK: TabBar
    // Create Home Tab variable
    lazy var bibleStudyTab: XCUIElement = app.tabBars.buttons["Bible Study"]
    lazy var feedTab: XCUIElement = app.tabBars.buttons["Feed"]
    lazy var exploreTab: XCUIElement = app.tabBars.buttons["Explore"]
    
    // MARK: Tests
    
    func testMainScreens() {
        homeScreenTitle.assertExistence()
        
        bibleStudyTab.assertExistence()
        bibleStudyTab.tap()
        bibleStudyScreenTitle.assertExistence()
        
        feedTab.assertExistence()
        feedTab.tap()
        feedScreenSearchFeild.assertExistence()
        
        exploreTab.assertExistence()
        exploreTab.tap()
        exploreScreenQuizCell.assertExistence()
    }
    
    // MARK: HOME WORK!
    func testNavigationBar() {
        // home tab `isSelected`
        
        // bible study tab - tap
        // app.tabBars.count == 4
        // bible study tab `isSelected`
        
        // feed tab - tap
        // app.tabBars.count == 4
        // feed tab `isSelected`
        
        // explore tab - tap
        // app.tabBars.count == 4
        // explore tab `isSelected`
        
        // home tab - tap
        // home tab `isSelected`
    }
}
