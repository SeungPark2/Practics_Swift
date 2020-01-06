//
//  CustomCell.swift
//  Project2
//
//  Created by PST on 2019/12/03.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    var rain: Int?
    var temp: Double?
    
    func setCell(city: City) {
        let cel = String(format: "%.1f", city.celsius * 1.8 + 32)
        
        cityNameLabel.text = city.cityname
        if (city.celsius > 25) {
            temperatureLabel.textColor = .red
        }
        else if (city.celsius < 10) {
            temperatureLabel.textColor = .blue
        }
        else {
            temperatureLabel.textColor = .black
        }
        temperatureLabel.text = "섭씨 \(city.celsius)도 /화씨 \(cel)도"
        temp = city.celsius
        
        if (city.rain > 50) {
            rainLabel.textColor = .orange
        }
        else {
            rainLabel.textColor = .black
        }
        rainLabel.text = "강수확률 \(city.rain)%"
        rain = city.rain
        
        switch city.state {
            case  10:
                weatherImageView.image = UIImage(named: "sunny")
            case  11:
                weatherImageView.image = UIImage(named: "cloudy")
            case  12:
                weatherImageView.image = UIImage(named: "rainy")
            case  13:
                weatherImageView.image = UIImage(named: "snowy")
            default :
                print("정보가 없습니다")
        }
    }
}
