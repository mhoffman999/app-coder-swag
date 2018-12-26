//
//  ViewController.swift
//  coder-swag
//
//  Created by Michael Hoffman on 12/23/18.
//  Copyright © 2018 Here We Go. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // *** DO NOT FORGET TO SET THE DATASOURCE AND DELEGATE OF THE TABLEVIEW ***
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    //The cell height stretched to fit the whole image
    //Had to manually set the cell height, either by code (here) or via Storyboard constraint
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 139
    }
    
    //In order to feed a tableView with data, you MUST implement protocols and delegeates for tableViews
    //The protocols and delegates come from 2 classes that MUST be included in the main class area which describes your UIViewController
    //****The additional protocols are: UITableViewDataSource and UITableViewDelegate ****
    //Once the protocols are added, Xcode will create an error because you are not comforming to protocol rules for the protocols added
    //You can click "Fix" and Xcode will produce 2 functions that are required to get the tableView populated
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Go to Storyboard to set the cell attribute "reuse identifier" to whatever you name it in the function below
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
/* SAME AS THE ONE-LINE CODE BELOW
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row]
 */
            let category = DataService.instance.getCategories()[indexPath.row]
            
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    
    
    
    
    


}

