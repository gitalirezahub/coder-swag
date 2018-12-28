//
//  ViewController.swift
//  coder-swag
//
//  Created by Macbook on 12/25/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable :UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return DataService.instance.getCategories().count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
//            let categories = DataService.instance.getCategories()
//            let category = categories[indexPath.row]
//            cell.updateView(category: category)
//            return cell
//        }else{
//            return CategoryCell()
//        }
//    }
//
//    //اینجا
//    //type "didSe" to autonmatic intelliSence
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let categories = DataService.instance.getCategories()
//        let category = categories[indexPath.row]
//        performSegue(withIdentifier: "ProductsVC", sender: category)
//    }
//
//
//    //اینجا
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let productsVC = segue.destination as? ProductsVC {
//            let barBtn = UIBarButtonItem()
//            barBtn.title = ""
//            navigationItem.backBarButtonItem = barBtn
//            assert(sender as? Category != nil)
//            productsVC.initProducts(category:sender as! Category)
//        }
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            
            cell.updateView(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }
}

