//
//  DetailsViewController.swift
//  Musical Terms
//
//  Created by Ryan Wang on 2016-04-27.
//  Copyright © 2016 Ryan Wang. All rights reserved.
//

//import Cocoa

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var termLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var details: Term!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        details = Term(text: "", category: "")
        details.definition = ""
        setup()
    }
    
    func setup() {
        termLabel.text = details.text
        categoryLabel.text = details.category
        definitionLabel.text = details.definition
    }
    

}
