//
//  Trees.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 22.11.2021.
//

import Foundation

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)
let list = array!.compactMap { Int($0)!}

let a = list[0]
let k = list[1]
let b = list[2]
let m = list[3]
let x = list[4]

var ans = 0
var w = x * 2 / a + 1

while ans < w {
    let days = (ans + w) / 2
    let holidaysDm = days / k
    let holidaysF = days / m
    let trees = (days - holidaysDm) * a + (days - holidaysF) * b
    if trees < x {
        ans = days + 1
    } else {
        w = days
    }
}
print(ans)
