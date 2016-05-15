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
    
    //Linking all the switches in the UI
    @IBOutlet weak var switchAll: UISwitch!
    @IBOutlet weak var switchDynamics: UISwitch!
    @IBOutlet weak var switchTempo: UISwitch!
    @IBOutlet weak var switchTempoRelated: UISwitch!
    @IBOutlet weak var switchStyle: UISwitch!
    @IBOutlet weak var switchItalian: UISwitch!
    @IBOutlet weak var switchConjunction: UISwitch!
    @IBOutlet weak var switchFrench: UISwitch!
    @IBOutlet weak var switchGerman: UISwitch!

    @IBAction func allToggled(sender: AnyObject) {
        //Debug statement
        print("all terms switch toggled")
        if switchAll.on {
            modifySwitchStates(true)
        }
        else {
            modifySwitchStates(false)
        }
    }
    
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
    
    //Changing all the switches based on the input (either true or false)
    func modifySwitchStates(input: Bool) {
        switchDynamics.on = input
        switchTempo.on = input
        switchTempoRelated.on = input
        switchStyle.on = input
        switchItalian.on = input
        switchConjunction.on = input
        switchFrench.on = input
        switchGerman.on = input
    }
    
    
    
    //Plan: add categories that we want to show to an array, then do array.contains() in main screen to filter them out
    //When All Terms switch is changed, disable all other switches

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
