//
//  CategoryCell.swift
//  coder Swag
//
//  Created by Jockey Wilson on 2017-11-28.
//  Copyright © 2017 Jockey Wilson. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    //these are unique to each cell and will be filled at runtime
    @IBOutlet weak var categoryTitle: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    //called when creating new cell and then this sets the items
    
    func updateViews(category: Category)  {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        print(categoryTitle.text as Any)
    }

}
