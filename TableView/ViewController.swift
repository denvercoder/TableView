//
//  ViewController.swift
//  TableView
//
//  Created by Timothy Myers on 9/25/16.
//  Copyright © 2016 Denver Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var cellContent = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 1...50 {
            cellContent.append(index)
        }

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return cellContent.count
    }


    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
    
        cell.textLabel?.text = String(cellContent[indexPath.row])
        
        return cell
    }


}

