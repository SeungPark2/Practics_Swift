//
//  ViewController.swift
//  UserDefaultsTest
//
//  Created by PST on 26/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    override func viewWillAppear (_ animated: Bool) {
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
            resultUpdate.text = (update == true ? "자동갱신" : "자동갱신되지 않음")
        
        let interval = ud.double(forKey: "interval")
            resultInterval.text = "\(Int(interval))분마다"
    }
}

