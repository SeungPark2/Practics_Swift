//
//  ViewController.swift
//  ActivityTest
//
//  Created by PST on 2019/12/04.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func touch(_ sender: UIButton)  {
                let imageToShar: UIImage = UIImage(named: "dog.jpg")!
               let urlToShare: String = "http://www.edwith.org/boostcours-ios"
               let textToShare: String = "안녕하세요, 부스트 코스 입니다"
               
               let activitViewController = UIActivityViewController(activityItems: [imageToShar, urlToShare, textToShare], applicationActivities: nil)
               
               activitViewController.excludedActivityTypes = [UIActivity.ActivityType.addToReadingList, UIActivity.ActivityType.assignToContact]
               
               activitViewController.completionWithItemsHandler = { (activity, success, items, error) in
                   if success {
                       print("성공")
                   } else {
                       print("실패")
                   }
               }
               
               self.present(activitViewController, animated: true, completion: nil)
    }


}

