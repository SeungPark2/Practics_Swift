//
//  ViewController.swift
//  Target-Action
//
//  Created by PST on 2019/11/27.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLable: UILabel!
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .long
        return formatter
    }()
    
    @IBAction func didDatePicker(_ sender: UIDatePicker) {
        print("value changes")
        let date: Date = sender.date // self.datePicker.date
        let dateString:String = self.dateFormatter.string(from: date)
        dateLable.text = dateString
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.datePicker.addTarget(self, action: #selector(self.didDatePicker(_:)), for: UIControl.Event.valueChanged)
        
    }


}

