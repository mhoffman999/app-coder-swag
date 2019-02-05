//
//  DataService.swift
//  coder-swag
//
//  Created by Michael Hoffman on 12/23/18.
//  Copyright © 2018 Here We Go. All rights reserved.
//

import Foundation

//This is a SINGLETON
//A Singleton is a design pattern
//A Singleton will remain in the apps memory forever (unlike Classes or Structs which are created and destroyed as needed)
//Therefore, BE CAREFUL of the amount of Singletons created and how much data each one holds
class DataService {
    
    //"static" means there is only ever one copy in memory
    //Therefore, anytime the app references "instance", it will be the same (only) example of that data
    //The constant "instance" is created with a brand new copy of DataService, but it is static
    //This constant will hold the data for the app
    static let instance = DataService()
    
    //"categories" is an array of type Category
    //It is private so that no one can access or modify the info from another class, VC, etc
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    //The func return type will be an array of type Category
    func getCategories() -> [Category] {
        return categories
    }
    
}





