//
//  WeatherInfo.swift
//  Project2
//
//  Created by PST on 2019/12/03.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

class WeatherInfo {
    
    static var shared: WeatherInfo = WeatherInfo()
    
    var temp: Double?
    var rain: Int?
}
