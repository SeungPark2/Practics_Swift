//
//  UserInfomation.swift
//  Singleton
//
//  Created by PST on 2019/11/27.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

class UserInfomation {
    
    static var shared: UserInfomation = UserInfomation()
    
    var name: String?
    var age: String?
}
