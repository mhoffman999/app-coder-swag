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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Black", price: "$32", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Balck", price: "$18", imageName: "shirt05.png"),
    ]
    
    //Even though the "Digital Goods" category has nothing, make an empty array of type Product
    //Putting the parantheses "()" at the end of the array "[]" actually creates an empty array
    //Swift requires an empty array to have a type
    //**** The empty array is needed because as the CollectionView feeds from the data,
    //if there was no array for the product it return nil and the app would crash
    private let digitalGoods = [Product]()
    
    //The func return type will be an array of type Category
    //Will be called to fill tableview cells
    func getCategories() -> [Category] {
        return categories
    }
    
    //Will be called to fill CollectionView cells
    func getProducts(forCategoryTitle title: String) -> [Product] {
        //The Switch statement will help decide which array to return
        //Will need func for each case type (see below)
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts() //placed in case it didn't match any of the above cases
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}





