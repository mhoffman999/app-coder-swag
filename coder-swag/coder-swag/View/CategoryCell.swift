//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Michael Hoffman on 12/23/18.
//  Copyright © 2018 Here We Go. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
/* NOT NEEDED WHEN CREATING OWN FUNCTIONS
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 */
    
    func updateViews(category: Category) {
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
    

}
