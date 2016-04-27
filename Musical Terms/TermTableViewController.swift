//
//  MainTableViewController.swift
//  Musical Terms
//
//  Created by Ryan Wang on 2016-04-26.
//  Copyright © 2016 Ryan Wang. All rights reserved.
//

import UIKit

class TermTableViewController: UITableViewController {
    
    var table = [Term]()
    
    func loadTable() {
        let term0 = Term(text: "pianissimo", category: "dynamics")
        table+=[term0]
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Load data into table
        loadTable()
        
        //print("table loaded")
        //print(table[0].text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return table.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "TermTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! TermTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let a = table[indexPath.row]
        
        cell.musicTerm.text = a.text
        return cell
    }

    

}

