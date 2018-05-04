//
//  AdjectiveViewController.swift
//  madlibapp
//
//  Created by Pommier, Brianna C on 4/23/18.
//  Copyright © 2018 Pommier, Brianna C. All rights reserved.
//

import UIKit

//var myMadLib4 = Global()

class AdjectiveViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var myTextView: UITextView!
    @IBAction func generateButton(_ sender: Any) {
    
    
    
    global.storyvar = myTextView.text!
    myTextView.text =
        "The evil " + global.nounVar + " had come to the end of his " + global.switchVar + " and lay sick unto death " +
        "at the mouth of his " + global.nounPlace + ". The animals, his " + global.adjectiveVar +
        " subjects, came round him and drew nearer as he grew more and more " +
        " helpless." +  " When they saw him on the point of death they thought to " +
        "themselves, Now is the time to pay off old grudges." + " So the Boar came up and " + global.verbVar + " at him with his " + global.nountwoVar + " then a Bull gored him with his horns; still the " + global.nounVar + " lay helpless before them: so the " + global.animalVar + ", feeling quite safe from danger, came up, and turning his tail to the " + global.nounVar + " " + global.verbtwoVar + " up his heels into his face. This is a double death, growled the " + global.nounVar + ". "
    //myName.resignFirstResponder()
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
