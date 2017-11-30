//
//  Product.swift
//  coder Swag
//
//  Created by Jockey Wilson on 2017-11-30.
//  Copyright © 2017 Jockey Wilson. All rights reserved.
//

import Foundation
//create an sruct/class to hold the object this is the product
//ie what varibaes it has or funtion, in this case just name, image andprive
struct Product {
    //just give the name to what makes up the product
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    //initialize the names so they can be used
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
