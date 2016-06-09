//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jane Appleseed on 5/23/15.
//  Copyright © 2015 Apple Inc. All rights reserved.
//

import XCTest

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    
    func testMealInitialization() {
        // Success Case
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        // Failure Case
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Please fill in meal name")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
    
}
