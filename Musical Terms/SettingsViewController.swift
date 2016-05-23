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
    
    //Variable to keep track of how many switches are on, which is all of them on start
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
            numSwitchesOn = 0
        }
    }
    
    //Functions for dealing with the toggling of the various switches
    @IBAction func dynamicsToggled(sender: AnyObject) {
        checkNumberOfSwitchesOn(switchDynamics)
    }
    
    @IBAction func tempoToggled(sender: AnyObject) {
        checkNumberOfSwitchesOn(switchTempo)
    }
    
    @IBAction func tempoRelatedToggled(sender: AnyObject) {
        checkNumberOfSwitchesOn(switchTempoRelated)
    }
    
    @IBAction func styleToggled(sender: AnyObject) {
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
        
        //First turn all the switches off, then turn the various ones on according the info passed in
        numSwitchesOn = typesSelected.count
        if numSwitchesOn == 8 {
            switchAll.on = true
        }
        modifySwitchStates(false)
        setInitialSwitchStates()
    }
    
    //Function that sets switch states when first loaded, based on info passed from main screen
    func setInitialSwitchStates() {
        if typesSelected.contains("dynamics") {
            switchDynamics.on = true
        }
        if typesSelected.contains("tempo") {
            switchTempo.on = true
        }
        if typesSelected.contains("tempoRelated") {
            switchTempoRelated.on = true
        }
        if typesSelected.contains("style") {
            switchStyle.on = true
        }
        if typesSelected.contains("italian") {
            switchItalian.on = true
        }
        if typesSelected.contains("conjunction") {
            switchConjunction.on = true
        }
        if typesSelected.contains("french") {
            switchFrench.on = true
        }
        if typesSelected.contains("german") {
            switchGerman.on = true
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
    
    //Function that returns type of term based on the int that's passed in
    func returnType(input: Int) -> String {
        switch (input) {
        case 0: return "dynamics"
        case 1: return "tempo"
        case 2: return "tempoRelated"
        case 3: return "style"
        case 4: return "italian"
        case 5: return "conjunction"
        case 6: return "french"
        case 7: return "german"
        default: return "not found"
        }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Function where pre-segue code is run
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Calls the function that modifies the typesSelected array when the save button is pressed
        if (saveButton === sender) {
            addIntoArray(switchDynamics, type: "dynamics")
            addIntoArray(switchTempo, type: "tempo")
            addIntoArray(switchTempoRelated, type: "tempoRelated")
            addIntoArray(switchStyle, type: "style")
            addIntoArray(switchItalian, type: "italian")
            addIntoArray(switchConjunction, type: "conjunction")
            addIntoArray(switchFrench, type: "french")
            addIntoArray(switchGerman, type: "german")
        }
    }
    
    //Function that adds the type into typesSelected only if the switch is on and it's not already contained in the array
    func addIntoArray(input: UISwitch, type: String) {
        if input.on && !typesSelected.contains(type) {
            typesSelected.append(type)
        }
    }
    
    

}
