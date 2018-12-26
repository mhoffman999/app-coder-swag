//
//  Category.swift
//  coder-swag
//
//  Created by Michael Hoffman on 12/23/18.
//  Copyright © 2018 Here We Go. All rights reserved.
//

import Foundation

struct Category {
    
    //NOT RECOMMENDED to set variable as "public" (does not prevent junk data from being added)
    //CHOOSE INSTEAD "private(set)" which means you won't be able to set these variables from other classes or VCs
    //So the variables become public variables that can be fetched but cannot be set by outside classes (unless that is what your app calls for)
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}




