//
//  YesNoNumbers.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 09.11.2021.
//

import Foundation

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)
let list = array!.compactMap { Int($0)!}

var set: Set<Int> = Set()
var counter: Int = 0

for i in list {
    set.insert(i)
    if set.count > counter {
        print("NO")
        counter += 1
    } else {
        print("YES")
    }
}
