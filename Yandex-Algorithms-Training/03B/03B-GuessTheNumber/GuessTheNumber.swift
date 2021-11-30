//
//  GuessTheNumber.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 30.11.2021.
//

import Foundation

let n = Int(readLine()!)!
var mainSet = Set(1...n)
var question = readLine()!

while question != "HELP" {
    var nums = Set(question.split{$0 == " "}.compactMap{Int($0)!})
    question = readLine()!
    if question == "YES" {
        mainSet = mainSet.intersection(nums)
    } else {
        mainSet = mainSet.subtracting(nums)
    }
    question = readLine()!
}

for i in mainSet.sorted() {
    print(i, terminator: " ")
}


//let n = Int(readLine()!)!
//var mainSet: Set<Int> = Set(1...n)
//
//var string : String = ""
//var num: Set<Int> = []
//var newNum: Set<Int> = []
//
//while string != "HELP" {
//    let questions = readLine()!
//    string = questions
//
//    if string == "YES" {
//        mainSet = mainSet.intersection(num)
//    } else if string == "NO"{
//        mainSet = mainSet.subtracting(num)
//    } else if string == "HELP" {
//        break
//    } else {
//        let stringArray = questions.components(separatedBy: " ")
//        var intArray: [Int] = []
//        for k in stringArray {
//            intArray.append(Int(k)!)
//        }
//        num = Set(intArray)
//    }
//}
//var ans = ""
//for i in mainSet.sorted() {
//    ans += String(i) + " "
//}
//print(ans)
