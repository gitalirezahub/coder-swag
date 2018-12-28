//
//  ProductViewController.swift
//  coder-swag
//
//  Created by Macbook on 12/27/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    private(set) public var products = [Product]()
    //@IBOutlet weak var productsCollection :UICollectionView!
    
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category) {
        // Populate the array with the function
        products = DataService.instance.getProduct(forCategoryTitle: category.title)
        
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            
            cell.updateViews(product: product)
            
            return cell
        }
        
        return ProductCell()
    }
}
