//
//  Question1.swift
//  Seeds
//
//  Created by Ashneel Das on 1/22/17.
//  Copyright © 2017 Amanda Hittelman. All rights reserved.
//

import UIKit

class Question1: UIViewController {

    
    @IBOutlet weak var yesV: UIView!
    @IBOutlet weak var emojiV: UIView!
    @IBOutlet weak var sliderV: UIView!
    
    @IBOutlet weak var labelQ1: UILabel!
    @IBOutlet weak var slider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        if(defaults.string(forKey: "q1") != nil)
        {
            labelQ1.text=defaults.string(forKey: "q1")
        }
    
        
        /*let temp = defaults.integer(forKey: "s1")
            switch temp {
            case 0:
                self.view.bringSubview(toFront: sliderV)
            case 1:
                self.view.bringSubview(toFront: emojiV)
            case 2:
                self.yesV.layer.zPosition = 1
            default: break
        }*/

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
 }

    @IBAction func sliderChange(_ sender: Any) {
        let temp = (sender as AnyObject).value
        let defaults = UserDefaults.standard
        defaults.set(temp, forKey: "a1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
}
