//
//  MainNavigationController.swift
//  Musical Terms
//
//  Created by Ryan Wang on 2016-04-28.
//  Copyright © 2016 Ryan Wang. All rights reserved.
//

//import Cocoa

import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        //Setting the nav bar to have black background, and white text
        self.navigationBar.barTintColor = UIColor.blackColor()
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }

}
