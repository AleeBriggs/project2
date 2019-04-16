//
//  ViewController.swift
//  Project2
//
//  Created by Alexandra Briggs on 4/3/19.
//  Copyright © 2019 Alexandra Briggs. All rights reserved.
//

import UIKit

class Global {
    var pickerVar = String()
    var score:Int = 0
    
    
}

let global = Global()

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerVal: UILabel!
    
    
    @IBOutlet weak var myPicker: UIPickerView!
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        pickerVal.text = "You selected: " + selection
        global.pickerVar = selection
        
        
    }
    var selection:String! = "Not Tested on Animals"
    
    @IBAction func mySubmit(_ sender: UIButton) {
        if (selection == "Not Tested on Animals"){
            performSegue(withIdentifier: "AnimalSegue", sender: self)
            
        }
        else if (selection == "Environmentally Sustainable"){
            performSegue(withIdentifier: "EnvironmentSegue", sender: self)
        }
        
        else if (selection == "Social Mission"){
            performSegue(withIdentifier: "SocialSegue", sender: self)
        }
    }
    
    let items = ["Not Tested on Animals", "Environmentally Sustainable","Social Mission"]
        
   
    
    @IBOutlet weak var myScore: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        myScore.text = "Score: \(global.score)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.delegate = self
        myPicker.dataSource = self
        myScore.text = "Score: \(global.score)"
        
    
        }

        // Do any additional setup after loading the view, typically from a nib.
    }
