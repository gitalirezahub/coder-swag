//
//  Category.swift
//  coder-swag
//
//  Created by Macbook on 12/27/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class Category {
    private(set) public var title:String
    private(set) public var imageName:String
    
    init(title:String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
