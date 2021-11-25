//
//  Stickers.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 24.11.2021.
//

import Foundation

let numberOfStickers = Int(readLine()!)!
let wBoard = Int(readLine()!)!
let hBoard = Int(readLine()!)!

func check(size: Int, n: Int, w: Int, h: Int) -> Bool {
    return ((w / size) * (h / size)) >= n
}

func rightBinSearch(l: Int, r: Int) -> Int {
    var l = l
    var r = r
    while l != r {
        let mid = (l + r + 1) / 2
        if check(size: mid, n: numberOfStickers, w: wBoard, h: hBoard) {
            l = mid
        } else {
            r = mid - 1
        }
    }
    return r
}

print(rightBinSearch(l: 0, r: numberOfStickers))

