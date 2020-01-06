//
//  Sungjuck.swift
//  ClassTest
//
//  Created by PST on 2019/11/25.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

class Sungjuck {
    
    private var hakno: String?
    private var name: String?
    private var kor: Int?
    private var eng: Int?
    private var math: Int?
    private var total: Int?
    private var avg: Double?
    
    init(hakno: String, name: String, kor: Int, eng: Int, math: Int) {
        self.hakno = hakno
        self.name = name
        self.kor = kor
        self.eng = eng
        self.math = math
    }
    
    func getHakno() -> String? {
        return hakno
    }
        
    func getname() -> String? {
        return name
    }
    
    func getKor() -> Int? {
        return kor
    }
    
    func getEng() -> Int? {
        return eng
    }
    
    func getMath() -> Int? {
        return math
    }
    
    func setTotal() {
        total = kor! + eng! + math!
    }
    
    func getTotal() -> Int? {
        return total
    }
    
    func setAvg() {
        avg = (Double)(kor! + eng! + math!) / 3.0
    }
    
    func getAvg() -> Double? {
        return avg
    }
}
