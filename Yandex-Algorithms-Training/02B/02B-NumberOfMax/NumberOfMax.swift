//
//  NumberOfMax.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 08.11.2021.
//

import Foundation

var maxEl: Int = 0
var elArray: [Int] = []
var ans: Int = 0

let el = Int(readLine()!)!
if el != 0 {
    elArray.append(el)
}
while el != 0 {
    var newEl = Int(readLine()!)!
    if newEl != 0 {
        elArray.append(newEl)
    } else {
        break
    }
}

if elArray.count == 1 {
    ans = 1
} else {
    maxEl = elArray.max()!
    for i in 0...elArray.count - 1 {
        if elArray[i] == maxEl {
            ans += 1
        }
    }
}
print(ans)
