//
//  RomanToBase10Tests.swift
//  RomanToBase10Tests
//
//  Created by Hasibul Shishir on 5/25/17.
//  Copyright © 2017 Hasibul Shishir. All rights reserved.
//

import XCTest
@testable import RomanToBase10

class RomanToBase10Tests: XCTestCase {
    
    var vc: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateInitialViewController() as! ViewController
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testRomanToBase10() {
        let testInputValidInput = "121"
        let testInvalidInput = "LXXXIX"
        
        let invalidInputResult = "Please input a valid Roman numeral"

        let validInputResult = "Result = 89"
        
        let testRomanToBase10withValidInput = vc.romanToBase10(roman: testInvalidInput)
        let testRomanToBase10withInvalidInput = vc.romanToBase10(roman: testInputValidInput)
        
        XCTAssertEqual(testRomanToBase10withValidInput, validInputResult, "")
        XCTAssertEqual(testRomanToBase10withInvalidInput, invalidInputResult, "")

        
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
