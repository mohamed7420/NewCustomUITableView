//
//  Product.swift
//  NewCustomUITableView
//
//  Created by Mohamed on 8/16/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

enum Ratings {
    case unRated
    case bad
    case good
    case veryGood
    case Excellent
}


class Product{
    
    var imageProduct: UIImage
    var title: String
    var description: String
    var ratings:Ratings
    
    init(imageProduct:String , title:String , description:String) {

        if let image = UIImage(named: imageProduct){
            
        self.imageProduct = image
        
        }else{
            
            self.imageProduct = UIImage(named: "default")!
            
        }
        

        self.title = title
        self.description = description
        self.ratings = .unRated
    }
    
    
}
