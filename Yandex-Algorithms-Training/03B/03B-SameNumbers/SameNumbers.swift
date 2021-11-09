//
//  SameNumbers.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 09.11.2021.
//

import Foundation

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)
let list = array!.compactMap { Int($0)!}

let array2 = readLine()?
    .split {$0 == " "}
    .map (String.init)
let list2 = array2!.compactMap { Int($0)!}

var set1 = Set(list + list2)

print((list.count + list2.count) - set1.count)
