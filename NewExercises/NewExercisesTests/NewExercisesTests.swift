//
//  NewExercisesTests.swift
//  NewExercisesTests
//
//  Created by apple on 07/04/17.
//  Copyright © 2017 apple. All rights reserved.
//

import XCTest
@testable import NewExercises

class NewExercisesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let numbersArray = [1, 2, 5,7, 9 ,23, 21, 65, 32, 76, 24, 43, 26]
        let resultIndices = AppDelegate.getIndices(array: numbersArray,targetValue: 69)
        
        //Check for not nil
        XCTAssertNotNil(resultIndices)
        
        //Check for empty values
    
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            let result = AppDelegate.checkForAnagram(firstString:  "Hello", secondString: "oellh")
            print(result)
        }
    }
    
}
