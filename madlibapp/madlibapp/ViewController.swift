//
//  ViewController.swift
//  madlibapp
//
//  Created by Pommier, Brianna C on 4/23/18.
//  Copyright © 2018 Pommier, Brianna C. All rights reserved.
//

import UIKit

class Global {
    var nounVar = String()
    var nounPlace = String()
    var nountwoVar = String()
    var animalVar = String()
    
    //verbs
    var verbVar = String()
    var verbtwoVar = String()
    
    //adjective
    var adjectiveVar = String()
    var switchVar = String()
    
    //story
    var storyvar = String()
    
    var verb:String = ""
    var adjective:String = ""
    //var switchVar:Int = 0
}

let global = Global()


class ViewController: UIViewController {
    
    @IBOutlet weak var theNoun: UILabel!
    @IBOutlet weak var myNoun: UITextField!
    @IBOutlet weak var myAnimal: UITextField!
    @IBOutlet weak var theAnimal: UILabel!
    @IBOutlet weak var myPlace: UITextField!
    @IBOutlet weak var thePlace: UILabel!
    @IBOutlet weak var myNounTwo: UITextField!
    @IBOutlet weak var theNounTwo: UILabel!
  
    @IBOutlet weak var secretLabel: UILabel!
    
    @IBOutlet weak var tapHere: UILabel!
    @IBOutlet weak var myTitle: UILabel!
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBAction func myButton(_ sender: Any) {
        self.myLabel.isHidden = true
        self.myTitle.isHidden = true
        self.tapHere.isHidden = true
    }
    
    
    
    @IBAction func addButton(_ sender: Any) {
        //animal 1
        global.nounVar = myNoun.text!
        theNoun.text = "You chose: " + global.nounVar
        myNoun.resignFirstResponder()
        
        //animal 2
        global.animalVar = myAnimal.text!
        theAnimal.text = "You chose: " + global.animalVar
        myAnimal.resignFirstResponder()
        
        //place
        global.nounPlace = myPlace.text!
        thePlace.text = "You chose: " + global.nounPlace
        myPlace.resignFirstResponder()
        
        //thenountwo
        global.nountwoVar = myNounTwo.text!
        theNounTwo.text = "You chose: " + global.nountwoVar
        myNounTwo.resignFirstResponder()
        
        self.secretLabel.isHidden = true
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //var nvc = segue.destination as! VerbViewController
       // myMadLib1.noun = myTextField.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

