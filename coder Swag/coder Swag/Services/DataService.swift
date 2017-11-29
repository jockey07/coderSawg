//
//  DataService.swift
//  coder Swag
//
//  Created by Jockey Wilson on 2017-11-28.
//  Copyright © 2017 Jockey Wilson. All rights reserved.
//

import Foundation

class DataService {
    //this is to hold the data for the app
    //static created only one instance of the data to be stored
    //reffered to as a singleton
    static let instance = DataService()
    
    //this is setting all the date into the app
    //normlly this would be directed to a server to retrive these but
    //when small it can be hardcoded
    //this creates an arrat of type category - the strcut from earlier
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    //when calling a funtion to get the categories it must return the same type
    //this case is an array of type category
    func getCategories() -> [Category] {
        return categories
    }
}
