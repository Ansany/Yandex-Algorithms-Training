//
//  BinSearch.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 23.11.2021.
//

import Foundation

let numberOfTasks: Int = 10

func check(days: Int, n: Int, k: Int) -> Bool {
    if (k + k + days - 1) * (days / 2) >= n {
        return true
    } else {
        return false
    }
}

func rightBinSearch() -> Int {
    var l = 0
    var r = numberOfTasks
    while l < r {
        let mid = (l + r) / 2
        print("Mid - \(mid)")
        if check(days: mid, n: numberOfTasks, k: 1) {
            r = mid
            print("R - \(r)")
        } else {
            l = mid + 1
            print("L - \(l)")
        }
    }
    print("ans - \(l)")
    return l
}

rightBinSearch()
