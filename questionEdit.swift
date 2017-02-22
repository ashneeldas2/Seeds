//
//  questionEdit.swift
//  Seeds
//
//  Created by Amanda Hittelman on 1/22/17.
//  Copyright © 2017 Amanda Hittelman. All rights reserved.
//

import UIKit

class questionEdit: UIViewController {

    @IBOutlet weak var q1: UITextView!
    @IBOutlet weak var q2: UITextView!
    @IBOutlet weak var q3: UITextView!
    @IBOutlet weak var q4: UITextView!
    @IBOutlet weak var q5: UITextView!
    
    
    @IBOutlet weak var s1: UISegmentedControl!
    @IBOutlet weak var s2: UISegmentedControl!
    @IBOutlet weak var s3: UISegmentedControl!
    @IBOutlet weak var s4: UISegmentedControl!
    @IBOutlet weak var s5: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        if((defaults.string(forKey: "q1") != nil))
        {
            q1.text = defaults.string(forKey: "q1")
            q2.text = defaults.string(forKey: "q2")
            q3.text = defaults.string(forKey: "q3")
            q4.text = defaults.string(forKey: "q4")
            q5.text = defaults.string(forKey: "q5")
            
            s1.selectedSegmentIndex = defaults.integer(forKey: "s1")
            s2.selectedSegmentIndex = defaults.integer(forKey: "s2")
            s3.selectedSegmentIndex = defaults.integer(forKey: "s3")
            s4.selectedSegmentIndex = defaults.integer(forKey: "s4")
            s5.selectedSegmentIndex = defaults.integer(forKey: "s5")
           
        }
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func save(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        
        defaults.set(q1.text, forKey: "q1")
        defaults.set(q2.text, forKey: "q2")
        defaults.set(q3.text, forKey: "q3")
        defaults.set(q4.text, forKey: "q4")
        defaults.set(q5.text, forKey: "q5")
        
        
        defaults.set(s1.selectedSegmentIndex, forKey: "s1")
        defaults.set(s2.selectedSegmentIndex, forKey: "s2")
        defaults.set(s3.selectedSegmentIndex, forKey: "s3")
        defaults.set(s4.selectedSegmentIndex, forKey: "s4")
        defaults.set(s5.selectedSegmentIndex, forKey: "s5")

        
    }

 

}
