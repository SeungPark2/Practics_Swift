//
//  SecondViewController.swift
//  Project1
//
//  Created by PST on 2019/11/29.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIGestureRecognizerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pw1TextField: UITextField!
    @IBOutlet weak var pw2TextFIeld: UITextField!
    @IBOutlet weak var introduceTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var image: UIImageView!

    lazy var imagePicker: UIImagePickerController = {
        let picker: UIImagePickerController = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        return picker
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pw1TextField.delegate = self
        pw2TextFIeld.delegate = self
        
        let viewGesture = UITapGestureRecognizer()
        viewGesture.delegate = self
        self.view.addGestureRecognizer(viewGesture)
        
        image.isUserInteractionEnabled = true // 이미지에 체스처 이벤트를 줄 땐 isUserInteractionEnabled를 true해줘야함
        image.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchImage(_:))))
    }
    
    // 메서드
    @objc func touchImage(_ sender: UITapGestureRecognizer) {
        print("image tap")
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    //델리게이트
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        self.view.endEditing(true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let originalImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.image.image = originalImage
            image.sizeToFit()
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (pw1TextField != nil && pw2TextFIeld != nil) {
            if (pw1TextField.text == pw2TextFIeld.text) {
                nextButton.isEnabled = true
            } else {
                nextButton.isEnabled = false
            }
        }
        
        UserInfo.shared.name = idTextField.text
        UserInfo.shared.password = pw1TextField.text
        UserInfo.shared.introduce = introduceTextField.text
    }
    
}
