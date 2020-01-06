//
//  ViewController.swift
//  Project2
//
//  Created by PST on 2019/12/02.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var countries: [Country] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let jsonDeocoder: JSONDecoder = JSONDecoder()
        guard let dataAsset: NSDataAsset = NSDataAsset(name: "countries") else {
            return
        }
        
        do {
            self.countries = try jsonDeocoder.decode([Country].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
        
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextViewController: SecondViewController = segue.destination as? SecondViewController else {
            return
        }
        
        guard let cell: UITableViewCell = sender as? UITableViewCell else {
            return
        }
        
        nextViewController.titleToSet = cell.textLabel?.text
        switch cell.textLabel?.text {
            case "한국":
                nextViewController.name = "korea"
            case "독일":
                nextViewController.name = "de"
            case "이탈리아":
                nextViewController.name = "it"
            case "미국":
                nextViewController.name = "us"
            case "프랑스":
                nextViewController.name = "fr"
            case "일본":
                nextViewController.name = "jp"
        default:
            nextViewController.name = "error"
        }
        
    }
    
    //델리게이트
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        let country: Country = self.countries[indexPath.row]
        
        cell.textLabel?.text = country.countryName
        cell.imageView?.image = UIImage(named: country.fileName)
        
        return cell
    }
    
}

