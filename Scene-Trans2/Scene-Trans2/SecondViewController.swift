//
//  SecondViewController.swift
//  Scene-Trans2
//
//  Created by PST on 23/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func back2(_ sender: Any) {
       _ = self.navigationController?.popViewController(animated: true)
    }
}
