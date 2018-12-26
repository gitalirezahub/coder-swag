//
//  CategoriesCell.swift
//  coder-swag
//
//  Created by Macbook on 12/26/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage :UIImageView!
    @IBOutlet weak var categoryTitle :UILabel!

    func updateView(category:Category){
        categoryImage.image = UIImage(named : category.imageName)
        categoryTitle.text = category.title
    }

}
