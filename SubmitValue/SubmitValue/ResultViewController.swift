//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by PST on 26/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate2: UILabel!
    @IBOutlet var resultInterval: UILabel!
    //@IBOutlet var resultinterval: UILabel!
    
    var paramEmail: String = ""
    
    var paramUpdate: Bool = false
    
    var paramInterval: Double = 0

    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate2.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
