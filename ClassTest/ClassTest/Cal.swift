//
//  Cal.swift
//  ClassTest
//
//  Created by PST on 2019/11/25.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

public class Cal {
    
   func sum(a: Int, b: Int) -> Int {
        return a + b
   }
   
   func div(a: Int, b: Int) -> Int {
       if (b == 0) {
           print("0으로 나눌 수 없습니다.")
           exit(0)
       }
       return a / b
   }
}
