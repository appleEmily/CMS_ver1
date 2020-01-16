//
//  setCowNumberViewController.swift
//  CMS_ver1
//
//  Created by 野崎絵未里 on 2020/01/17.
//  Copyright © 2020 emily.com. All rights reserved.
//

import UIKit

class setCowNumberViewController: UIViewController {
    
    @IBOutlet var setNumberOfCow: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back() {
        var numberOfCow: Int!
        numberOfCow = Int(setNumberOfCow.text!)
        print(numberOfCow)
        //let vc = self.presentingViewController as! countCowViewController
        //vc.numberOfCow = numberOfCow
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
