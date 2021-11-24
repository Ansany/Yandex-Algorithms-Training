//
//  BinSearch.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 23.11.2021.
//

import Foundation

import Foundation

let numberOfTasks = Int(readLine()!)!
let firstDayTasks = Int(readLine()!)!

func check(days: Int, n: Int, k: Int) -> Bool {
    if (k + k + days - 1) * (days / 2) >= n {
        return true
    } else {
        return false
    }
}

func leftBinSearch(l: Int, r: Int, check: (Int,Int,Int) -> Bool, n: Int, k: Int) -> Int {
    var l = l
    var r = r
    while l < r {
        let mid = (l + r) / 2
        if check(mid, n, k) {
            r = mid
        } else {
            l = mid + 1
        }
    }
    return l
}

print(leftBinSearch(l: 0, r: numberOfTasks, check: check(days:n:k:), n: numberOfTasks, k: firstDayTasks))
