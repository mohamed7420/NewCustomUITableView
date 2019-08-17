//
//  CustomTableView.swift
//  NewCustomUITableView
//
//  Created by Mohamed on 8/16/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class CustomTableView: UITableViewCell {

    @IBOutlet weak var imageProduct: UIImageView!
    
    @IBOutlet weak var productTitle: UILabel!
    
    @IBOutlet weak var productDescription: UILabel!
    
    
    var product:Product?{
        
        didSet{
            
            self.updateUI()
            
        }
    }
    
     func updateUI(){
        
        imageProduct.image = product?.imageProduct
        productTitle.text = product?.title
        productDescription.text = product?.description
        
        
    }
    
    

}
