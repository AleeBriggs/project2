//
//  ThirdViewController.swift
//  Project2
//
//  Created by Alexandra Briggs on 4/10/19.
//  Copyright © 2019 Alexandra Briggs. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func plusOne3(_ sender: Any) {
        global.score += 1
    }
    
    @IBAction func plusOne4(_ sender: Any) {
        global.score += 1
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}