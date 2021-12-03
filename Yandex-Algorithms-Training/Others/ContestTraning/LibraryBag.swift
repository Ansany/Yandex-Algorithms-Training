//
//  LibraryBag.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 03.12.2021.
//

import Foundation

var myString = readLine()!
var arr: [String] = []
while myString != "STOP" {
    arr.append(myString)
    myString = readLine()!
}

func someSort(array: [String]){
    var stringArray: [Int:String] = [:]
    for i in array {
        if let key = Int(i.filter { ("1"..."9").contains($0) }) {
            let string = i.components(separatedBy: CharacterSet.decimalDigits).joined()
            stringArray[key] = string
        }
    }
    let sortedArray = stringArray.sorted( by: { $0.0 < $1.0 })
    for item in sortedArray {
        print(item.value, separator: " ")
    }
}

someSort(array: arr)

