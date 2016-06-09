//
//  Meal.swift
//  FoodTracker
//
//  Created by Rohit Begani on 6/9/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    
    // Here we add use var instead of let because the value of these elements is going to keep on changing while a user is using the application.
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization fails if there is no name or if negative rating is given
        if name.isEmpty || rating < 0 {
            // The following line will throw an error unless we add a question mark next to init to show that it is failable and may fail and return a nil value
            return nil
        }
    }
}
