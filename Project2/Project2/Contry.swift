//
//  Contry.swift
//  Project2
//
//  Created by PST on 2019/12/02.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

struct Country: Codable {
    
    
    let countryName: String
    let fileName: String

    enum CodingKeys: String, CodingKey {
        case countryName = "korean_name"
        case fileName = "asset_name"
    }
}
