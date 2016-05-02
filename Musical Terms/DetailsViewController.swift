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
    
    //Outlets for the label, category and definition
    @IBOutlet weak var termLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    //Variables needed
    var details: Term!
    let screenSize: CGRect = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setting text of navigation bar to be white
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        //Calling function that sets up the screen
        setup()
    }
    
    func setup() {
        //Setting the text of each label to the members of the object that's passed in
        termLabel.text = details.word
        
        categoryLabel.text = details.category
        
        definitionLabel.text = details.definition
        //Ensuring the definition label will continue on another line below when the text is too long to fit on one line
        definitionLabel.preferredMaxLayoutWidth = screenSize.width - 28
    }

}
