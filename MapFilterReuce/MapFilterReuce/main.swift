//
//  main.swift
//  MapFilterReuce
//
//  Created by PST on 2019/11/27.
//  Copyright © 2019 PST. All rights reserved.
//

import Foundation

// Map

let numbers: [Int] = [0, 1, 2, 3 ,4]
var doubledName : [Int]
var strings: [String]

doubledName = [Int]()
strings = [String]()

for number in numbers {
    doubledName.append(number * 2)
    strings.append("\(number)")
}

print(doubledName)
print(strings)


doubledName = numbers.map( { (number: Int) -> Int in
    return number * 2
})

strings = numbers.map( { (number: Int) -> String in
    return "\(number)"
})

print(doubledName)
print(strings)


doubledName.map{ $0 * 2 }
print(doubledName)


// Filter

var filtered: [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered)

let evenNumbers: [Int] = numbers.filter {(number: Int) -> Bool in
    return number % 2 == 0
}

print(evenNumbers)

let oddNumber: [Int] = numbers.filter {
    $0 % 2 != 0
    
}

print(oddNumber)



// reduce

let someNumbers: [Int] = [2, 8, 15]
var result: Int = 0


for number in someNumbers {
    result += number
}


print(result)

let sum: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    return first + second
})

print(sum)

var substrack: Int = someNumbers.reduce(1, {(first: Int, second: Int) -> Int in
    return first-second
})

print(substrack)

let sumFromThree = someNumbers.reduce(2) { $0 + $1 }

print(sumFromThree)


let someNumbers2 = someNumbers.reduce(2) { $0 * $1 }

print(someNumbers2)
