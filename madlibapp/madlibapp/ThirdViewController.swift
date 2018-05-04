//
//  NounViewController.swift
//  madlibapp
//
//  Created by Pommier, Brianna C on 4/23/18.
//  Copyright © 2018 Pommier, Brianna C. All rights reserved.
//

import UIKit

//var myMadLib3 = Global()

class NounViewController: UIViewController {
    
    @IBOutlet weak var myAdjective: UITextField!
    @IBOutlet weak var theAdjective: UILabel!
    @IBOutlet weak var switchVal: UILabel!
    @IBOutlet weak var secretLabel: UILabel!
    
    
    @IBAction func mySwitch(_ sender: UISwitch) {
        if sender.isOn {
            global.switchVar = "weeks"
        }
        else {
            global.switchVar = "days"
        }
        switchVal.text = global.switchVar
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        global.adjectiveVar = myAdjective.text!
        theAdjective.text = "You chose: " + global.adjectiveVar
        myAdjective.resignFirstResponder()
        self.secretLabel.isHidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
