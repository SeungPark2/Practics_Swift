//
//  ViewController.swift
//  Singleton
//
//  Created by PST on 2019/11/27.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBAction func touchUpPushButton() {
        UserInfomation.shared.name = nameTextField.text
        UserInfomation.shared.age = ageTextField.text
    }
}

