//
//  DataService.swift
//  coder-swag
//
//  Created by Macbook on 12/27/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title:"SHIRTS", imageName:"shirts.png"),
        Category(title:"HOODIES", imageName:"hoodies.png"),
        Category(title:"HATS", imageName:"hats.png"),
        Category(title:"DIGITAL", imageName:"digital.png"),
    ]
    
    private let hats = [
        Product(title:"Deveslopes logo graphic beanies", price:"$18", image:"hat01.png"),
        ]
    
    private let hoodies = [
        Product(title:"Deveslopes logo graphic beanies", price:"$18", image:"hat01.png"),
        Product(title:"Deveslopes logo hat black", price:"$22", image:"hat02.png"),
        Product(title:"Deveslopes logo graphic beanies", price:"2$2", image:"hat03.png"),
        Product(title:"Deveslopes logo graphic SnapBack", price:"$18", image:"hat04.png"),
        ]
    
    private let digital = [
        Product(title:"Deveslopes logo hoodie gray", price:"$32", image:"hoodie01.png"),
        Product(title:"Deveslopes logo hoodie black", price:"$32", image:"hoodie02.png"),
        Product(title:"Deveslopes hoodie gray", price:"$32", image:"hoodie03.png"),
        Product(title:"Deveslopes logo hoodie black", price:"$32", image:"hoodie04.png"),
        ]
    
    private let shirts = [
        Product(title:"Deveslopes logo shirt black", price:"$18", image:"shirt01.png"),
        Product(title:"Deveslopes badge shirt light gray", price:"$19", image:"shirt02.png"),
        Product(title:"Deveslopes logo shirt red", price:"$18", image:"shirt03.png"),
        Product(title:"Hustle shirt red", price:"$18", image:"shirt04.png"),
        Product(title:"KickFlip studio black", price:"$18", image:"shirt05.png"),
        ]
    
    func getCategories() -> [Category]{
     return categories
    }
    
    
    
    private let digitalGoods = [Product]()
    
    func getProduct(forCategoryTitle title:String) -> [Product]{
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigital()
        case "SHIRTS":
            return getShirts()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getDigital() -> [Product]{
        return digital
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
}








