//
//  ViewController.swift
//  NewCustomUITableView
//
//  Created by Mohamed on 8/15/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var products:[Product] = ProductLine.getProductLineArray()[0].products
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Apple Store"
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return products.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdenty", for: indexPath) as! CustomTableView
        
        let product = products[indexPath.row]
        
        cell.product = product
       
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Apple Store"
    }
}

