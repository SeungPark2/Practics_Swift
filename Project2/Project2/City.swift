//
//  City.swift
//  Project2
//
//  Created by PST on 2019/12/03.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

struct City: Codable {
    
    let cityname: String
    let state: Int
    let celsius: Double
    let rain: Int
    
    enum CodingKeys: String, CodingKey {
        case cityname = "city_name"
        case state
        case celsius
        case rain = "rainfall_probability"
    }
}
