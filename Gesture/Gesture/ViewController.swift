//
//  ViewController.swift
//  Gesture
//
//  Created by PST on 2019/11/29.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 코드 작성으로 제스처 추가
//        let tapReconizer = UITapGestureRecognizer(target: self, action: #selector(tapVIew(_:)))
//        self.view.addGestureRecognizer(tapReconizer)
        
        // 델리게이트 이용
        let tapReconizer = UITapGestureRecognizer()
        tapReconizer.delegate = self
        self.view.addGestureRecognizer(tapReconizer)
    }

    // 인터페이스 빌더를 사용한 경우
    @IBAction func tapVIew(_ sender: UITapGestureRecognizer) {
        print("Tapped")
        self.view.endEditing(true)
    }
    
    // 코드로 제스처를 추가한 경우
    @objc func tapView(gestureRecognizer: UITapGestureRecognizer) {
        print("Tapped")
    }
    
    // 델리게이트 이용한 경우 사용자가 터치를 해도 되냐?물어보는 메서드
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        self.view.endEditing(true)
        print("Tapped")
        return true
    }
}

