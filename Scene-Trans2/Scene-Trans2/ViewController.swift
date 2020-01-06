//
//  ViewController.swift
//  Scene-Trans2
//
//  Created by PST on 23/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func moveByNavi(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier:"SecondVC") else {
            return
        }
        
    self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBAction func movePresent(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier:"SecondVC") else {
            return
    }
        self.present(uvc, animated: true)
    }

}
