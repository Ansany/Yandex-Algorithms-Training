//
//  Schools.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 08.11.2021.
//

import Foundation

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)

let housesArray = array!.compactMap { Int($0)!}
var left: [Int] = []
var shoppos: Int = -20

for k in 0...housesArray.count-1 {
    left.append(0)
}

for i in 0...housesArray.count-1 {
    if housesArray[i] == 2 {
        shoppos = i
    }
    if housesArray[i] == 1 {
        left[i] = i - shoppos
    }
}
var ans = 0
shoppos = 30
for k in stride(from: housesArray.count-1, to: -1, by: -1) {
    if housesArray[k] == 2 {
        shoppos = k
    }
    if housesArray[k] == 1 {
        let mindist = min((shoppos - k), left[k])
        ans = max(ans, mindist)
    }
}
print(ans)
