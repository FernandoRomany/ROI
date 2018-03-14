//
//  ROITests.swift
//  ROITests
//
//  Created by Fernando Romany on 3/14/18.
//  Copyright © 2018 Fernando Romany. All rights reserved.
//

import XCTest

class ROITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssert(ROI.getROI(produceCost: 100, costOfSell: 200, numberOfProductSell: 6, advCost: 200) == 0.5)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
