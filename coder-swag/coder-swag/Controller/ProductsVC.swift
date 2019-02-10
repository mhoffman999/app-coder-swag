//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Michael Hoffman on 2/10/19.
//  Copyright © 2019 Here We Go. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //Like a Tableview, a Collection has delegates and protocols that MUST be referenced
    //Place the dataSource and delegate acknowledgements in viewDidLoad section after adding the IBOutlet
    
    //Xcode will show an error indicator on the Class line above
    //Click and select "Fix" for Xcode to automatically add the protocols to the file
    
    @IBOutlet weak var productsCollection: UICollectionView!

    //Created any empty array so the CollectView has something to base off of,
    //Otherwise, if it was nil, the app would crash (specifically if the data was coming from the internet instead of from the app itself)
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    
    func initProducts(category: Category) {
        //The Products array (above) will be populated with products and this func is passing in the title was passed from the segue in CategoriesVC
        //This func can now be called from CategoriesVC prepareForSegue
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        //Changing the title of the NavigationBar
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
