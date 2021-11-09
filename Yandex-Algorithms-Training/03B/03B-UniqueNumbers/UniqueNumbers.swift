//
//  UniqueNumbers.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 09.11.2021.
//

import Foundation

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)
let list = array!.compactMap { Int($0)!}

var counter: Int = 0
var ans: [Int] = []

func uniqueElements(numbers: [Int]) {
    for i in 0...numbers.count - 1 {
        for k in 0...numbers.count - 1 {
            if numbers[i] == numbers[k] {
                counter += 1
            }
        }
        if counter == 1 {
            ans.append(numbers[i])
        }
        counter = 0
    }
    for f in ans {
        print(f, terminator: " ")
    }
}
uniqueElements(numbers: list)
