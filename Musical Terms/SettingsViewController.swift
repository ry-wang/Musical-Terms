//
//  SettingsViewController.swift
//  Musical Terms
//
//  Created by Ryan Wang on 2016-05-08.
//  Copyright © 2016 Ryan Wang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var typesSelected = [String]()
    //Total number of switches
    let totalNumSwitches = 8
    
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
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    //Optimize later, have it only modify the array when preparing for the segue back, rather than each time a switch is toggled
    //Add a check in each switchToggle to determine whether switchAll should toggle or not
    
    //Variable to keep track of how many switches are on, which is all on start
    //var totalNumSwitches = 8
    var numSwitchesOn = 8

    //Function for toggling of allTerms switch
    @IBAction func allToggled(sender: AnyObject) {
        //Debug statement
        print("all terms switch toggled")
        //If the allTerms switch is on, then every category gets turned on, and off otherwise
        if switchAll.on {
            modifySwitchStates(true)
            numSwitchesOn = totalNumSwitches
        }
        else {
            modifySwitchStates(false)
            //Replace hardcoded values with a variable later
            numSwitchesOn = 0
        }
    }
    
    @IBAction func dynamicsToggled(sender: AnyObject) {
        //Debug statement
        print("dynamics toggled")
        
        checkNumberOfSwitchesOn(switchDynamics)
    }
    
    @IBAction func tempoToggled(sender: AnyObject) {
        //Debug statement
        print("tempo toggled")
        
        checkNumberOfSwitchesOn(switchTempo)
    }
    
    @IBAction func tempoRelatedToggled(sender: AnyObject) {
        //Debug statement
        print("tempoRelated toggled")
        
        checkNumberOfSwitchesOn(switchTempoRelated)
        
        /*if switchTempoRelated.on {
            if !typesSelected.contains("tempoRelated") {
                typesSelected.append("tempoRelated")
            }
            switchAllState("toggleOn")
        }
        else {
            switchAllState("toggleOff")
            typesSelected.removeAtIndex(typesSelected.indexOf("tempoRelated")!)
        }*/
    }
    
    @IBAction func styleToggled(sender: AnyObject) {
        //Debug statement
        print("style toggled")
        
        checkNumberOfSwitchesOn(switchStyle)
    }
    
    @IBAction func italianToggled(sender: AnyObject) {
        checkNumberOfSwitchesOn(switchItalian)
    }
    
    @IBAction func conjunctionToggled(sender: AnyObject) {
        checkNumberOfSwitchesOn(switchConjunction)
    }
    
    @IBAction func frenchToggled(sender: AnyObject) {
        checkNumberOfSwitchesOn(switchFrench)
    }
    
    @IBAction func germanToggled(sender: AnyObject) {
        checkNumberOfSwitchesOn(switchGerman)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.darkGrayColor()
       
        //Load all categories into typesSelected, probably useless
        //loadTypes()
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        //Debug statement
        print("Cancel button pressed")
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (saveButton === sender) {
            addIntoArray(switchDynamics, type: "dynamics")
            addIntoArray(switchTempo, type: "tempo")
            addIntoArray(switchTempoRelated, type: "tempoRelated")
            addIntoArray(switchStyle, type: "style")
            addIntoArray(switchItalian, type: "italian")
            addIntoArray(switchFrench, type: "french")
            addIntoArray(switchGerman, type: "german")
        }
    }
    
    func addIntoArray(input: UISwitch, type: String) {
        if input.on && !typesSelected.contains(type) {
            typesSelected.append(type)
        }
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
    
    func returnType(input: Int) -> String {
        var type = String()
        
        switch (input) {
        case 0: type = "dynamics"
        case 1: type = "tempo"
        case 2: type = "tempoRelated"
        case 3: type = "style"
        case 4: type = "italian"
        case 5: type = "conjunction"
        case 6: type = "french"
        case 7: type = "german"
        default: type = "not found"
        }
        return type
    }
    
    //Function that incremements or decrements switchesOn, will also toggle switchAll based on value of switchesOn
    func checkNumberOfSwitchesOn(input: UISwitch) {
        if input.on {
            numSwitchesOn += 1
        }
        else {
            numSwitchesOn -= 1
        }
        
        //Debug statement
        print(numSwitchesOn)
        
        //If the number of switches on is 8, that means all switches are on, so switchAll should be on too
        if (numSwitchesOn == 8) {
            switchAll.on = true
        }
        else {
            switchAll.on = false
        }
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
