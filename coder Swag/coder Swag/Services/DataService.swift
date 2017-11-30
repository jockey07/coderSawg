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
    //like with the categires we name make actual produts, this one a hat product
    //privata as no one else shold be able to do this
    //use let to make a constant as they will not chnage while running
    private let hats = [
        Product(title: "devslopes logo graphic beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes log hat black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes logo hat white", price: "$22", imageName: "hat03.png"),
        Product(title: "devslopes logo snapback", price: "20", imageName: "hat04.png")
    ]
    
    //product hoodies
    private let hoodies = [
        Product(title: "Devslopes logo hoodie grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes logo hoodie red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes hoodie grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes hoodie black", price: "$32", imageName: "hoodie04.png")
    ]
    
    //product shirts
    private let shirts = [
        Product(title: "Devslipes logo shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslipes basge shirt light grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslipes logo shirt red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle delegate grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    //make and initialize an empty array so no nil values arize to crash program
    private let digitalGoods = [Product]()
    
    //when calling a funtion to get the categories it must return the same type
    //this case is an array of type category
    func getCategories() -> [Category] {
        return categories
    }
    
    //this is called when someone clicks on a product
    //the case decides which one to call
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShitrts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodie()
        case "DIGITAL GOODS":
            return getDigitalGood()
        default:
            return getShitrts()
        }
    }
    
    //once case has decided t hen one of these is called to get the correct data requested
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodie() -> [Product] {
        return hoodies
    }
    
    func getShitrts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
