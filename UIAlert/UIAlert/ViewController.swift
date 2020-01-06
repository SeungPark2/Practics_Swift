//
//  ViewController.swift
//  UIAlert
//
//  Created by PST on 27/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var result: UILabel!
        
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "알림",
                                      message: "UIAlertController 샘플 알림창입니다",
                                      preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "확인", style: .default) { (_) in
            self.result.text = "취소 버튼을 클릭했습니다"
        }
        let cancel = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel) { (_) in
            self.result.text = "취소 버튼을 클릭했습니다"
        }
        let exec = UIAlertAction(title: "실행", style: .destructive) { (_) in
            self.result.text = "취소 버튼을 클릭했습니다"
        }
        let stop = UIAlertAction(title: "중지", style: .default) { (_) in
            self.result.text = "취소 버튼을 클릭했습니다"
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
 
        self.present(alert, animated: false)
    }
    
    @IBAction func onLogin(_ sender: Any) {
        
        let title = "iTunes Store에 로그인"
        let message = "사용자의 Apple ID sqlpro@naver.com의 암호를 입력하시오"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) { (_) in}
    
    alert.addAction(cancel)
    alert.addAction(ok)
        
    alert.addTextField(configurationHandler: { (tf) in
        tf.placeholder = "암호"
        tf.isSecureTextEntry = true
    })
        
        if let tf = alert.textFields?[0] {
            print("입력된 값은 \(tf.text!) 입니다. ")
        } else {
            print("입력된 값이 없습니다.")
        }
    
    self.present(alert, animated: false)
    }
    
    @IBAction func auth(_ sender: Any) {
        let msg = "로그인"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style:. default) {
            (_) in
            
            let loginId = alert.textFields?[0].text
            let loginPw = alert.textFields?[1].text
            
            if loginId == "박재균병신" && loginPw == "nice" {
                self.result.text = "인증되었습니다"
            } else {
                self.result.text = "인증에 실패했습니다"
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "아이디"
            tf.isSecureTextEntry = false
        })
        
        alert.addTextField(configurationHandler:  { (tf) in
            tf.placeholder = "비밀번호"
            tf.isSecureTextEntry = true
        })
        
        self.present(alert, animated: false)
    }
}

