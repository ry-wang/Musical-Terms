//
//  SettingsViewController.swift
//  Musical Terms
//
//  Created by Ryan Wang on 2016-05-08.
//  Copyright © 2016 Ryan Wang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var categoriesSelected = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.darkGrayColor()
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"Back", style:.Plain, target:nil, action:nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Plan: add categories that we want to show to an array, then do array.contains() in main screen to filter them out

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
