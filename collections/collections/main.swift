//
//  main.swift
//  collections
//
//  Created by PST on 2019/11/20.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation
//
//var array : Array<Int> = Array<Int>()
//array.append(5)
//array.append(10)
//array.append(55)
//array.append(510)
//
//for i in 0..<array.count {
//    print(array[i])
//}
//
//var dic: Dictionary<Int, String> = [Int:String]()
//
//dic[10] = "val"
//dic[20] = "20"
//
//
//var set: Set<Int> = Set<Int>()
//
//
//class Student {
//    var name:String = "seungtae"
//    var type:String = "java144"
//
//    class func selfIntroduce() {
//        print("학생입니다")
//    }
//
//    func selfIntroduce() {
//        print("저는 \(self.type)반 \(name) 입니다.")
//    }
//}
//
//
//Student.selfIntroduce()
//
//var tt:Student = Student()
//tt.name = "박승태"
//tt.type = "자바144기"
//tt.selfIntroduce()
//
//struct Student2 {
//    var name:String = "tt"
//    var type:String = "java"
//
//    static func selfIntroduce() {
//        print("학생타입입니다")
//    }
//
//    func selfIntroduce() {
//        print("\(type)반 \(name)")
//    }
//}
//
//Student2.selfIntroduce()
//
//var t: Student2 = Student2()
//t.name = "승태"
//t.type = "자바"
//t.selfIntroduce()
//
//
//enum School: String {
//    case ele="초등"
//    case mid="중등"
//    case high="고등"
//
//    func message() {
//        switch self {
//        case .ele, .mid:
//            print("중등이하")
//        case .high:
//            print("고등")
//        }
//    }
//}
//
//if let sc : School = School(rawValue: "초등") {
//    print(sc.rawValue)
//} else {
//    print("대학생입니다.")
//}
//
//if let e: School = School(rawValue: "중등") {
//    e.message()
//}
//
//// Class vs Struct/Enum
//
//struct st {
//    var value: Int = 1
//}
//
//class cs {
//    var value: Int = 1
//}
//
//let first = st()
//var second = first
//second.value = 2
//
//print(first.value)
//print(second.value)
//
//
//let cfirst = cs()
//var csecond = cfirst
//csecond.value = 4
//
//print(cfirst.value)
//print(csecond.value)
//
//
//var sum: (Int, Int) -> Int = { (a: Int, b: Int ) -> Int in
//    return a + b
//}
//
//var result = sum(1,2)
//print(result)
//
//var all: (String, Int) -> Int = { (a: String, b: Int) -> Int in
//    return b
//}
//
//result = all("fwe",2)
//print(result)
//
//let add: (Int, Int) -> Int
//add = { (a: Int, b: Int) -> Int in
//    return a + b
//}
//print(add(1,4))
//
//let substract: (Int, Int) -> Int
//substract = { (a:Int, b: Int) -> Int  in
//    return a - b
//}
//print(substract(1,4))
//
//let divide: (Int, Int) -> Int
//divide = { (a: Int, b: Int) in
//    return a / b
//}
//print(divide(5,2))
//
//func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
//    return method(a, b)
//}
//
//var cc = calculate(a: 5, b: 10, method: add)
//print(cc)
//cc = calculate(a: 10, b: 5, method: substract)
//print(cc)
//cc = calculate(a: 100, b: 2, method: divide)
//print(cc)
//
//cc = calculate(a: 10, b: 50, method: { (a: Int, b: Int) -> Int in
//    return a * b
//})
//print(cc)
//
//
//var cc2 : Int
//
//cc2 = calculate(a: 20, b: 40) { (left: Int, right: Int) -> Int in
//    return left*right
//}
//print(cc2)
//
//cc2 = calculate(a: 40, b: 50) { (left: Int, right: Int) in
//    return left + right
//}
//print(cc2)
//
//cc2 = calculate(a: 50, b: 2, method: {
//    return $0 + $1
//})
//print(cc2)
//
//cc2 = calculate(a: 60, b: 7) {
//    return $0 * $1
//}
//print(cc2)
//
//cc2 = calculate(a: 99, b: 1) {
//    $0 + $1
//}
//print(cc2)
//
//cc2 = calculate(a: 99, b: 2) { $0 * $1 }
//print(cc2)


//
//var array2:Array<Int> = Array<Int>()
//
//array2.append(50)
//array2.append(10)
//array2.append(1)
//array2.append(5)
//array2.append(80)
//array2.append(100)
//
//array2.sort()
//
//for i in 0..<array2.count {
//    print(array2[i])
//}
//
//
//var dic2: Dictionary<String, Int> = [String : Int]()
//
//dic2["pst"] = 15
//dic2["swift"] = 100
//print(dic2.values)
//
//var seted : Set<String> = Set<String>()
//
//seted.insert("pst")
//seted.insert("swift")
//print(seted.contains("swi"))


