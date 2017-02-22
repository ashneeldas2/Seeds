//
//  Question5.swift
//  Seeds
//
//  Created by Amanda Hittelman on 1/22/17.
//  Copyright © 2017 Amanda Hittelman. All rights reserved.
//

import UIKit

class Question5: UIViewController {

    @IBOutlet weak var labelQ5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let defaults = UserDefaults.standard
        
        if(defaults.string(forKey: "q5") != nil)
        {
            labelQ5.text=defaults.string(forKey: "q5")
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
