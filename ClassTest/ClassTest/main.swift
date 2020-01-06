//
//  main.swift
//  ClassTest
//
//  Created by PST on 2019/11/25.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

var sj = [Sungjuck]();

for i in 0..<3 {
    print("학번을 입력하세요")
    var hakno:String = readLine()!
    print("이름을 입력하세요")
    var name:String = readLine()!
    print("국어점수를 입력하세요")
    var kor = Int(readLine()!)!
    print("영어점수를 입력하세요")
    var eng = Int(readLine()!)!
    print("수학점수를 입력하세요")
    var math = Int(readLine()!)!
    
    sj.insert(Sungjuck(hakno: hakno, name: name, kor: kor, eng: eng, math: math), at: i)
    sj[i].setTotal()
    sj[i].setAvg()

}

for sj2 in sj {
    print(sj2.getHakno()!, " ", sj2.getname()!, " ",sj2.getKor()!, " ", sj2.getEng()!, " ", sj2.getMath()!, " ", sj2.getTotal()!, " ", sj2.getAvg()!)
}
    
//    let dd = Cal()
//
//    var a = dd.sum(a: 10, b: 2)
//    var e = dd.div(a: 10, b: 5)
//
//    print(a)
//    print(e)


