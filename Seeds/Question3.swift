//
//  Question3.swift
//  Seeds
//
//  Created by Amanda Hittelman on 1/22/17.
//  Copyright © 2017 Amanda Hittelman. All rights reserved.
//

import UIKit

class Question3: UIViewController {

    @IBOutlet weak var labelQ3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let defaults = UserDefaults.standard
        
        if(defaults.string(forKey: "q3") != nil)
        {
            labelQ3.text=defaults.string(forKey: "q3")
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
