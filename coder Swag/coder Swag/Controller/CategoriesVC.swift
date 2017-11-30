//
//  ViewController.swift
//  coder Swag
//
//  Created by Jockey Wilson on 2017-11-27.
//  Copyright © 2017 Jockey Wilson. All rights reserved.
//

import UIKit

//add two protocls to be use with table views here, data source & delegate
//protocol - set of rules already written

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    //when using protocals the functuons or whatever they contain have to be added in order to work
    //in this case the two below, this means to conform
    
    //how many cells required
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return DataService.instance.getCategories().count
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
   
    
    //whats in the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //make sure identifier is attached to the cell via the storyboard
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            //go into array of categories to get the data
            let category  = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
        }else{
            return CategoryCell()
        }
    }


}

