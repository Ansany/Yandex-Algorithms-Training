//
//  CarsNumbers.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 29.11.2021.
//

import Foundation

let m = Int(readLine()!)!
var wits: [Set<String.Element>] = []

for _ in 0..<m {
    let numSet = Set(readLine()!)
    wits.append(numSet)
}

let n = Int(readLine()!)!
var nums: [(String, Int)] = []
var maxWitCnt = 0

for i in 0..<n {
    let kek = readLine()!
    let numSet = Set(kek)
    var witCnt = 0
    for wit in wits {
        if wit.isSubset(of: numSet) {
            witCnt += 1
        }

    }
    nums.append((kek, witCnt))
    maxWitCnt = max(maxWitCnt, witCnt)
}

for num in nums {
    if num.1 == maxWitCnt {
        print(num.0)
    }
}

