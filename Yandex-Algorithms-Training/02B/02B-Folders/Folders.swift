//
//  Schools.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 08.11.2021.
//

import Foundation

let numberOfFolders = Int(readLine()!)
let array = readLine()?
    .split {$0 == " "}
    .map (String.init)

let folders = array!.compactMap { Int($0)!}
var timer: Int = 0

let max: Int = folders.max()!

for i in 0...folders.count - 1 {
    timer += folders[i]
}
let ans: Int = timer - max
print(ans)
