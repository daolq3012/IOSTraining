//
//  TableViewViewController.swift
//  3.AutoLayout
//
//  Created by DaoLQ on 3/2/18.
//  Copyright © 2018 DaoLQ. All rights reserved.
//

import UIKit

class TableViewViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrText = ["Test001aaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbqqqqqqqqqqqqqqqqqqqqqqqqqaaaaa", "Test 002", "Test 003"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension TableViewViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.lblText.text = arrText[indexPath.row]
        return cell
    }
}
