//
//  countCowViewController.swift
//  CMS_ver1
//
//  Created by 野崎絵未里 on 2020/01/17.
//  Copyright © 2020 emily.com. All rights reserved.
//

import UIKit

class countCowViewController: UIViewController {
    
    var numberOfCow: Int = 0
    var countingcow: Int!
    
    @IBOutlet var cowLabel: UILabel!
    @IBOutlet var countingCowLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        cowLabel.text = String(numberOfCow)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus() {
        if countingcow < numberOfCow {
        countingcow += 1
        countingCowLabel.text = String(countingcow)
        } else {
        }
    }
    @IBAction func minus() {
        if countingcow < numberOfCow {
        countingcow -= 1
        countingCowLabel.text = String(countingcow)
        } else {
            
        }
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
