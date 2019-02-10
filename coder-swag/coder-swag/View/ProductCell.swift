//
//  ProductCell.swift
//  coder-swag
//
//  Created by Michael Hoffman on 2/5/19.
//  Copyright © 2019 Here We Go. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    //Creating a func to update the data when called by CollectionView protocol
    //Every time a CollectionView cell is created, the appropriate product info will update the views
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
    
}
