//
//  main.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 08.11.2021.
//

import Foundation

var N: Int = 0
var i: Int = 0
var j: Int = 0

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)

if let stringArray = array {
    N = Int(stringArray[0])!
    i = Int(stringArray[1])!
    j = Int(stringArray[2])!
}

var stations: [Int] = []
var counterForArray: Int = 1
var counter: Int = 1
var counter2: Int = 0

for _ in 0...(N-1) {
    stations.append(counterForArray)
    counterForArray += 1
}

if j > i {
    let sum1 = (j - i) - 1

    if i == 1 {
        counter = 0
    } else {
        for index in stations {
            if stations[index] != i {
                counter += 1
            } else {
                break
            }
        }
    }
    
    for index in stations {
        if stations[index-1] > j {
            counter2 += 1
        } else {
            counter2 = 0
        }
    }
    
    let sum2 = counter2 + counter
    
    if sum1 > sum2 {
        print(sum2)
    } else if sum1 < sum2 {
        print(sum1)
    } else {
        print(sum1)
    }
}

if j < i {
    let sum1 = (i - j) - 1

    if j == 1 {
        counter = 0
    } else {
        for index in stations {
            if stations[index] != j {
                counter += 1
            } else {
                break
            }
        }
    }
    
    for index in stations {
        if stations[index-1] > i {
            counter2 += 1
        } else {
            counter2 = 0
        }
    }
    
    let sum2 = counter2 + counter
    
    if sum1 > sum2 {
        print(sum2)
    } else if sum1 < sum2 {
        print(sum1)
    } else {
        print(sum1)
    }
}
