//
//  ViewController.swift
//  Then1
//
//  Created by PST on 12/03/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit
import Then

final class ViewController: UIViewController {
    
    let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.textAlignment = .center
    }
    
    let tableView = UITableView().then {
        $0.backgroundColor = .clear
        $0.separatorStyle = .none
        //$0.register(MyCell.self, forCellReuseIdentifier: "myCell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.titleLabel)
        self.view.addSubview(self.tableView)
    }
    
}
