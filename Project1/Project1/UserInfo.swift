//
//  UserInfo.swift
//  Project1
//
//  Created by PST on 2019/11/29.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

class UserInfo {
    static let shared: UserInfo = UserInfo()
    
    var name: String?
    var password: String?
    var phone: String?
    var birthday: String?
    var introduce: String?
}
