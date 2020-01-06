//
//  NewSegue.swift
//  Secene-CustomSegue
//
//  Created by PST on 26/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class NewSegue: UIStoryboardSegue {
    
    override func perform() {
        //세그웨어의 출발지 뷰 컨트롤러
        let srcUVC = self.source
        //세그웨어의 목적지 뷰 컨트롤러
        let destUVC = self.destination
        //formVIew에서 toView로 뷰를 전환한다
        UIView.transition(from: srcUVC.view,
                          to: destUVC.view,
                          duration: 2,
                          options: .transitionCurlDown)
    }
}
