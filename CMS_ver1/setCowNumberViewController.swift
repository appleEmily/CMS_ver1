//
//  setCowNumberViewController.swift
//  CMS_ver1
//
//  Created by 野崎絵未里 on 2020/01/17.
//  Copyright © 2020 emily.com. All rights reserved.
//

import UIKit


class setCowNumberViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //データの数だけellを表示。
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cell
    }
    
    @IBOutlet weak var pastDataTableView: UITableView!
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet var setNumberOfCow: UITextField!
    @IBOutlet weak var pastCowNumberData: UIView!
    @IBOutlet weak var dateLabelCell: UILabel!
    @IBOutlet weak var numberOfCowLabelCell: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .none
        let now = Date()
        print(f.string(from: now))
        todayDate.text = f.string(from: now)
        //tableViewのcellにfirebaseから過去の日付と頭数の値をとってきて、表示。（毎回ここでロードすると大変そうだけど、まあ良いでしょう。）

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back() {
        var numberOfCow: Int!
        numberOfCow = Int(setNumberOfCow.text!)
        print(numberOfCow)
        //let vc = storyboard?.instantiateInitialViewController() as! countCowViewController
        //vc.numberOfCow = numberOfCow
        
        //ここでfirebaseに値を保存。
        //
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
