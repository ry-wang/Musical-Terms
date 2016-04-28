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
    var data: Term!
    
    func loadTable() {
        
        let term0 = Term(text: "Pianissimo", category: "dynamics")
        let term1 = Term(text: "Piano", category: "dynamics")
        
        term0.definition = "very soft"
        term1.definition = "soft"
        
        table += [term0, term1]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Load data into table
        loadTable()
        
        //Debug statement
        print("table loaded")
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
    
    //Function that's called when cell is pressed
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //Debug statement
        print("pressed")
        
        data = Term(text: "", category: "")
        data.text = table[indexPath.row].text
        data.category = table[indexPath.row].category
        data.definition = table[indexPath.row].definition
        self.performSegueWithIdentifier("openDetails", sender: nil)
    }
    
    //Function to prepare for segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "openDetails") {
            //Debug statement
            print("segue occuring")
            
            let detailsVC = segue.destinationViewController as! DetailsViewController
            //let details = data
            
            //print(data.category)
            
            detailsVC.details = data
        }
    }

    

}

