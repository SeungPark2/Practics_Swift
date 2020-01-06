//
//  ViewController.swift
//  IBTest
//
//  Created by PST on 21/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var uiTitle1: UILabel!
    @IBAction func clickBtn1(_ sender: Any) {
        self.uiTitle1.text = "Button1 Clicked"
    }
    
    @IBOutlet var uiTitle2: UILabel!
    
    @IBAction func clickBtn2(_ sender: Any) {
        self.uiTitle2.text = "Button2 Clicked"
    }
    
    @IBOutlet var uiTitle3: UILabel!
    @IBAction func clickBtn3(_ sender: Any) {
        self.uiTitle3.text = "Button3 Clicked"
    }
    
    @IBOutlet var uiTitle4: UILabel!
    @IBAction func clickBtn4(_ sender: Any) {
        self.uiTitle4.text = "Button4 Clicked"
    }
    
    @IBOutlet var uiTitle5: UILabel!
    
    @IBAction func clickBtn5(_ sender: Any) {
        self.uiTitle5.text = "Button5 Clicked"
    }
}

