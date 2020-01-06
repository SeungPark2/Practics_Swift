//
//  ThridVIewController.swift
//  Project2
//
//  Created by PST on 2019/12/02.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var WeatherLabel:UILabel!
    @IBOutlet weak var temperatureLabel:UILabel!
    @IBOutlet weak var rainLabel:UILabel!
    
    var titleToSet: String?
    var weatherToSet: String?
    var temperatureToSet: String?
    var temp: Double?
    var rainToSet: String?
    var rain: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titleToSet
        
        // 그림
        switch weatherToSet {
            case "맑음":
                ImageView.image = resizeImage(image: UIImage(named: "sunny")!, targetSize: CGSize(width: 100, height: 100))
            case "흐릿":
                ImageView.image = resizeImage(image: UIImage(named: "cloudy")!, targetSize: CGSize(width: 100, height: 100))
            case "눈":
                ImageView.image = resizeImage(image: UIImage(named: "snowy")!, targetSize: CGSize(width: 100, height: 100))
            case "비":
                ImageView.image = resizeImage(image: UIImage(named: "rainy")!, targetSize: CGSize(width: 100, height: 100))
        default:
            print("thirdview 정보가 없습니다.")
        }
        
        // 날씨상태
        WeatherLabel.text = weatherToSet
            
        // 기온
        if (temp! > 25) {
            temperatureLabel.textColor = .red
        }
        else if (temp! < 10) {
            temperatureLabel.textColor = .blue
        }
        else {
            temperatureLabel.textColor = .black
        }
        temperatureLabel.text = temperatureToSet
        
        // 강수량
        if(rain! > 50) {
            rainLabel.textColor = .orange
        }
        else {
            rainLabel.textColor = .black
        }
        rainLabel.text = rainToSet
    }
    
 func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
      let size = image.size

      let widthRatio  = targetSize.width  / size.width
      let heightRatio = targetSize.height / size.height

      var newSize: CGSize
      if(widthRatio > heightRatio) {
          newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
      } else {
          newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
      }

      let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
    
      UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
      image.draw(in: rect)
      let newImage = UIGraphicsGetImageFromCurrentImageContext()
      UIGraphicsEndImageContext()

      return newImage!
  }
}
