//
//  File.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 08.11.2021.
//

import Foundation

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)
let folders = array!.compactMap { Int($0)!}

let array2 = readLine()?
    .split {$0 == " "}
    .map (String.init)
let blocks = array2!.compactMap { Int($0)!}

let length = folders[0]
let mid = Int(length/2)
var left: Int = 0
var right: Int = 0
var rightNumbers: [Int] = []

if length % 2 == 0 {
    for i in 0...blocks.count - 1 {
        if blocks[i] < mid {
            left = blocks[i]
        }
        if blocks[i] >= mid {
            rightNumbers.append(blocks[i])
        }
    }
    if rightNumbers != [] {
        right = rightNumbers.min()!
    }
    
    print(left, right)
}

if length % 2 != 0 {
    for i in 0...blocks.count - 1 {
        
        if mid == blocks[i] {
            print(blocks[i])
            break
        }
        
        if blocks[i] < mid {
            left = blocks[i]
        }
        if blocks[i] > mid {
            rightNumbers.append(blocks[i])
            right = rightNumbers.min()!
        }
    }
    if right != 0 {
        print(left, right)
    }
}
