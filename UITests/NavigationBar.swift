//
//  test HW.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 6/11/25.
//

import XCTest

//MARK: HOME WORK!

// Test check if navigation bar functional is working : all buttons exist =4 and highlighting (isSelected)

class TestNavigationBar: Runner {
    
    //MARK: Buttons
    lazy var buttonHome: XCUIElement =  app.tabBars.buttons["Home"]
    lazy var buttonBibleStudy: XCUIElement =  app.tabBars.buttons["Bible Study"]
    lazy var buttonFeed: XCUIElement =  app.tabBars.buttons["Feed"]
    lazy var buttonExplore: XCUIElement =  app.tabBars.buttons["Explore"]
    
    // MARK: TabBar
    lazy var bibleStudyTab: XCUIElement = app.tabBars.buttons["Bible Study"]
    lazy var feedTab: XCUIElement = app.tabBars.buttons["Feed"]
    lazy var exploreTab: XCUIElement = app.tabBars.buttons["Explore"]
    lazy var homeTab: XCUIElement = app.tabBars.buttons["Home"]
    
    // MARK: tabBarElemement
    lazy var tabBarElemement: XCUIElement = app.tabBars.element
    
    // MARK: Tests
        func testNavigationBar(){
      
        // home tab 'isSelected'
        buttonHome.assertExistence()
        // app.tabBars.buttons.count == 4
        tabBarElemement.assertExistence()
        
        // bible stady tab - tap
        bibleStudyTab.tap()
        // app.tabBars.buttons.count == 4
        tabBarElemement.assertExistence()
        // bible study tab 'isSelected'
        buttonBibleStudy.assertExistence()
        
        // feed tab - tap
        feedTab.tap()
        // feed tab 'isSelected'
        buttonFeed.assertExistence()
        
        // Explore tab - tap
        exploreTab.tap()
        // app.tabBars.buttons.count == 4
        tabBarElemement.assertExistence()
        // Eplore tab 'isSelected'
        buttonExplore.assertExistence()
        
        // home tab - tap
        homeTab.tap()
        // home tab 'isSelected'
        buttonHome.assertExistence()
    }
}
