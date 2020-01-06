//
//  SecondViewController.swift
//  Singleton
//
//  Created by PST on 2019/11/27.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
     
        self.nameLabel.text = UserInfomation.shared.name
        self.ageLabel.text = UserInfomation.shared.age
    }
    
    @IBAction func DismissButton() {
        self.dismiss(animated: true, completion: nil)
    }
}
