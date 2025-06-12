//  UITests.swift
//  UITests
//  Created by Ilia Pavlov on 2/22/24

import XCTest

class UITests: Runner {
    // MARK: Static Text
    lazy var homeScreenTitle: XCUIElement = app.staticTexts["homeView_title"]
    lazy var bibleStudyScreenTitle: XCUIElement = app.staticTexts["bibleStudyView_title"]
    
    // MARK: Buttons
    lazy var exploreScreenQuizCell: XCUIElement = app.buttons["Faith-Based Quiz"]
    
    // MARK: TabBar
    // Create  Home Tab variable
    lazy var homeTab: XCUIElement = app.tabBars.buttons["Home"]
    lazy var bibleStudyTab: XCUIElement = app.tabBars.buttons["Bible Study"]
    lazy var feedTab: XCUIElement = app.tabBars.buttons["Feed"]
    lazy var exploreTab: XCUIElement = app.tabBars.buttons["Explore"]
    
    // MARK: TextFields
    lazy var feedScreenSearchField: XCUIElement = app.textFields.firstMatch
    
    // MARK: Tests
    // TEST MEANS ALL MAIN SCREENS ARE OPENING!!!!
    
        func testMainScreens() {
            homeTab.assertExistence()
            homeTab.tap()
            homeScreenTitle.assertExistence()
            
            bibleStudyTab.assertExistence()            //check if exist button
            bibleStudyTab.tap()                        // tap
            bibleStudyScreenTitle.assertExistence()   //check if appear title (OPENING Bible Stude screen)
            
            feedTab.assertExistence()
            feedTab.tap()
            feedScreenSearchField.assertExistence()
            
            exploreTab.assertExistence()
            exploreTab.tap()
            exploreScreenQuizCell.assertExistence()
        }
    //NavigationTabBar
}
//func testNavigationBar(){
  //  print ("")
    // home tab 'isSelected'
    // app.tabBars.buttons.count == 4
    
    // bible stady tab - tap
    // app.tabBars.buttons.count == 4
    // bible study tab 'isSelected'
    
    // feed tab - tap
    // app.tabBars.buttons.count == 4
    // feed tab 'isSelected'
    
    // Explore tab - tap
    // app.tabBars.buttons.count == 4
    // Eplore tab 'isSelected'
    
    // home tab - tap
    // feed tab 'isSelected'





