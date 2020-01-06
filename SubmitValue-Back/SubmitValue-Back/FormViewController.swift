//
//  FormViewController.swift
//  SubmitValue-Back
//
//  Created by PST on 26/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    
    @IBAction func onSubmit(_ sender: Any) {
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
        self.presentingViewController?.dismiss(animated: true)
    }
}
