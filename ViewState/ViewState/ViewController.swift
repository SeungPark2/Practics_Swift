//
//  ViewController.swift
//  ViewState
//
//  Created by PST on 2019/11/27.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 뷰 계층이 메모리에 로드된 직후 호출
    override func viewDidLoad() {
        super.viewDidLoad()
        print("뷰가 메모리에 로드 됨")
    }
    
    // 뷰 계층에 추가되고 화면이 표시 되기 직전에 호출
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("뷰가 추가 되고 화면에 표시 되기 전에 호출됨")
    }
    
    // 뷰 계층에 추가되고 화면이 표시 된 후 호출
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("뷰가 추가 되고 화면에 표시 된 후 호출됨")
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

