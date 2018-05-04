//
//  StoryViewController.swift
//  madlibapp
//
//  Created by Pommier, Brianna C on 4/25/18.
//  Copyright © 2018 Pommier, Brianna C. All rights reserved.
//

import UIKit

struct Choices: Decodable {
    let type : String
    let word: String
}


class StoryViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var selection: String!
    
    @IBOutlet weak var nvapicker: UIPickerView!
    
    let items = ["Choose An Option", "animal", "place", "noun", "verb", "adjective"]
    
    //establishes the number of components (columns)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //establishes the number of rows in the json
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    //establishes selection of each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    //this is the function that runs when you select a row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selection = items[row]
        let nva = selection!
        theChoice.text! = "You picked \(nva):\n"
        
        // url for json file. Must be https and hosted on a secure server. Change the location to your json file on your server
        
        let json = "https://violet-apple.com/json/textgen2.json"
        
        // guard statements protect the app if there is no response
        guard let url = URL(string: json)
            else { return }
        
        // this area sets up a urlsession with the json
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data
                else { return }
            
            // use do, try, catch to deal with errors
            do {
                
                // JSONDecoder decodes json array
                let choices = try JSONDecoder().decode([Choices].self, from: data)
                //enumerated adds the index to the array
                for (i, choice) in choices.enumerated() {
                    if(nva == choice.type) {
                        //must use this to change the ui element outside of the urlsession. Use of += to append to the TextView
                      DispatchQueue.main.sync {
                          self.theChoice.text! += "\(choice.word)\n"
                        }
                    }
                }
            }
                
            catch let jsonErr {
                print("Error", jsonErr)
            }
            
            }.resume()
        
        
    }
    
   
    @IBOutlet weak var theChoice: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nvapicker.delegate = self
        nvapicker.dataSource = self


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
