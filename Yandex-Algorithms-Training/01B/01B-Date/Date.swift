//
//  Date.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 08.11.2021.
//

import Foundation

var x: Int = 0
var y: Int = 0
var z: Int = 0

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)

if let stringArray = array {
    x = Int(stringArray[0])! // 1...31
    y = Int(stringArray[1])! // 1...31
    z = Int(stringArray[2])! // year
}

if x == y {
    print(1)
} else if x <= 12 && y <= 12 {
    print(0)
} else {
    print(1)
}
