//
//  ScondViewController.swift
//  Project2
//
//  Created by PST on 2019/12/02.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var titleToSet: String?
    var name: String?
    @IBOutlet weak var tableView: UITableView!
    var city: [City] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = titleToSet
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonDecoder: JSONDecoder = JSONDecoder()
        
        guard let dataAsset: NSDataAsset = NSDataAsset(name: name!) else {
            return
        }
        
        do {
            self.city = try jsonDecoder.decode([City].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
        
        let indexPath = NSIndexPath(row: NSNotFound, section: 0)
        self.tableView.scrollToRow(at: indexPath as IndexPath, at: .top, animated: false)
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdView: ThirdViewController = segue.destination as? ThirdViewController else {
            return
        }
        
        guard let cell: CustomCell = sender as? CustomCell else {
            return
        }
        
        thirdView.titleToSet = cell.cityNameLabel.text
        switch cell.weatherImageView.image {
            case UIImage(named: "sunny"):
                thirdView.weatherToSet = "맑음"
            case UIImage(named: "cloudy"):
                thirdView.weatherToSet = "흐릿"
            case UIImage(named: "rainy"):
                thirdView.weatherToSet = "비"
            case UIImage(named: "snowy"):
                thirdView.weatherToSet = "눈"
        default:
            print("정보가 없습니다")
        }
    
        thirdView.temperatureToSet = cell.temperatureLabel.text
        thirdView.temp = cell.temp
        thirdView.rainToSet = cell.rainLabel.text
        thirdView.rain = cell.rain
    }
    
}


extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return city.count
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
           let cities: City = city[indexPath.row]
           
            cell.setCell(city: cities)

           return cell
       }
}
