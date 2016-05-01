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
    let screenSize: CGRect = UIScreen.mainScreen().bounds
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        setup()
    }
    
    func setup() {
        termLabel.text = details.word
        
        categoryLabel.text = details.category
        
        definitionLabel.text = details.definition
        definitionLabel.preferredMaxLayoutWidth = screenSize.width - 28
    }

}
