//
//  ViewController.swift
//  Secene-CustomSegue
//
//  Created by PST on 26/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "custom_segue") {
            NSLog("커스텀 세그가 실행중입니다")
        }  else if (segue.identifier == "action_segue") {
            NSLog("액션 세그가 실행중입니다")
        }
        else {
            NSLog("알 수 없는 세그입니다")
        }
        
        //NSLog("segueway identifier: \(segue.identifier!)")
        }

}

