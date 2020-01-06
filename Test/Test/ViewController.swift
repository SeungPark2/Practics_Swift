//
//  ViewController.swift
//  Test
//
//  Created by PST on 2019/12/03.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource{
    
    let menus = ["Swift", "ddd", "sss"]
    let image = ["kr", "fr", "it"]
    let cellIdentifier = "first"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! CustomCell
        
        cell.aLabel?.text = menus[indexPath.row]
        cell.aimageView?.image = UIImage(named: "kr")//(named: image[indexPath.row])
        
        return cell
    }
}

