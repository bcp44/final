//
//  VerbViewController.swift
//  madlibapp
//
//  Created by Pommier, Brianna C on 4/23/18.
//  Copyright © 2018 Pommier, Brianna C. All rights reserved.
//

import UIKit


//var myMadLib2 = Global()

class VerbViewController: UIViewController {
    
    @IBOutlet weak var myVerbone: UITextField!
    @IBOutlet weak var myVerbtwo: UITextField!
    @IBOutlet weak var theVerbone: UILabel!
    @IBOutlet weak var theVerbtwo: UILabel!
    @IBOutlet weak var secretButton: UILabel!
    
    
    @IBAction func addButton(_ sender: Any) {
        global.verbVar = myVerbone.text!
        theVerbone.text = "You chose: " + global.verbVar
        myVerbone.resignFirstResponder()
        
        //place
        global.verbtwoVar = myVerbtwo.text!
        theVerbtwo.text = "You chose: " + global.verbtwoVar
        myVerbtwo.resignFirstResponder()
        
         self.secretButton.isHidden = true
        
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
