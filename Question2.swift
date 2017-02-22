//
//  Question2.swift
//  Seeds
//
//  Created by Amanda Hittelman on 1/22/17.
//  Copyright © 2017 Amanda Hittelman. All rights reserved.
//

import UIKit

class Question2: UIViewController {

    @IBOutlet weak var labelQ2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let defaults = UserDefaults.standard
        
       if(defaults.string(forKey: "q2") != nil)
        {
            labelQ2.text=defaults.string(forKey: "q2")
        }
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
