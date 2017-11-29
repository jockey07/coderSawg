//
//  Category.swift
//  coder Swag
//
//  Created by Jockey Wilson on 2017-11-28.
//  Copyright © 2017 Jockey Wilson. All rights reserved.
//

import Foundation

struct Category {
    
    //the private means only this can do the setting
    //public means anyone can retrieve
    private(set) public var title: String
    private(set) public var imageName: String
    
    //this initialzizes and new categiry and populates it when called
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
