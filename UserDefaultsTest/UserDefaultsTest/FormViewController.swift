//
//  FormViewController.swift
//  UserDefaultsTest
//
//  Created by PST on 27/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    
    
    @IBAction func onSubmit2(_ sender: Any) {
        let ud = UserDefaults.standard
        
        ud.set(self.email.text, forKey: "email")
        ud.set(self.isUpdate.isOn, forKey:"isUpdate")
        ud.set(self.interval.value, forKey: "interval")
    
        self.presentingViewController?.dismiss(animated: true)
    }
}
