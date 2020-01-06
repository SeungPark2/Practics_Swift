//
//  SecondViewController.swift
//  ViewState
//
//  Created by PST on 2019/11/27.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("두번째 뷰가 메모리에 호출됨")
    }
    
    // 뷰 게층에서 사라지기 직전에 호출
       override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(true)
           print("뷰에서 사라지기 직전에 호출됨")
       }
       
       // 뷰 계층에서 사라진 뒤 호출
       override func viewDidDisappear(_ animated: Bool) {
           super.viewDidDisappear(true)
           print("뷰에서 사라진 후 호출됨")
       }

}
