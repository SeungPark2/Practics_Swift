//
//  ViewController.swift
//  Delegate-imagePicker
//
//  Created by PST on 28/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pick(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        
        self.present(picker, animated: false)
    }
    
    @IBOutlet var imgView: UIImageView!
}

