//
//  Restaurant.swift
//  FoodPinDemo
//
//  Created by 罗秋生 on 16/8/22.
//  Copyright © 2016年 罗秋生. All rights reserved.
//

import Foundation

/**
 *  结构体
 */
//struct Restaurant {
//    
//    var name     : String
//    var type     : String
//    var location : String
//    var image    : String
//    var isVisited: Bool
//}

class Restaurant {
    
    var name     : String
    var type     : String
    var location : String
    var image    : String
    var isVisited: Bool
    
    init(name: String, type: String, location: String, image: String, isVisited: Bool) {
        
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
    }
}

//Restaurant(name: <#T##String#>, type: <#T##String#>, location: <#T##String#>, image: <#T##String#>, isVisited: <#T##Bool#>)