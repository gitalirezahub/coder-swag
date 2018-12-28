//
//  Product.swift
//  coder-swag
//
//  Created by Macbook on 12/27/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

struct Product {
    private(set) var title:String
    private(set) var price:String
    private(set) var image:String
    
    init(title:String, price:String, image:String) {
        self.title = title
        self.price = price
        self.image = image
    }
}
