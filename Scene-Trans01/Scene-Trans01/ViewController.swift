//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by PST on 22/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func moveNext(_ sender: Any) {
        //let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
    
    uvc.modalTransitionStyle = UIModalTransitionStyle.partialCurl
    
    self.present(uvc, animated: true)
    }
}

