//
//  ThirdViewController.swift
//  Project1
//
//  Created by PST on 2019/11/29.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var finishButton: UIButton!
    
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneTextField.delegate = self
        let gesture = UITapGestureRecognizer()
        gesture.delegate = self
        self.view.addGestureRecognizer(gesture)
    }
    
    // 메서드
    @IBAction func didDatePicker(_ sender: UIDatePicker) {
        let date: Date = sender.date
        let dateString: String = self.dateFormatter.string(from: date)
        dateLabel.text = dateString
        UserInfo.shared.birthday = dateLabel.text
        if (!(phoneTextField.text?.isEmpty ?? false) && !(dateLabel.text?.isEmpty ?? false)) {
           finishButton.isEnabled = true
        } else {
           finishButton.isEnabled = false
        }
    }
    
    @IBAction func touchFinishButton(_ sender: UIButton) {
        print(UserInfo.shared.name!)
        print(UserInfo.shared.password!)
        print(UserInfo.shared.phone!)
        print(UserInfo.shared.birthday!)
        print(UserInfo.shared.introduce!)
    }
    
    // 델리게이트
    func textFieldDidEndEditing(_ textField: UITextField) {
        UserInfo.shared.phone = phoneTextField.text!
        if (!(phoneTextField.text?.isEmpty ?? false) && !(dateLabel.text?.isEmpty ?? false)) {
           finishButton.isEnabled = true
        } else {
            finishButton.isEnabled = false
        }
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        self.view.endEditing(true)
    }
    
}
