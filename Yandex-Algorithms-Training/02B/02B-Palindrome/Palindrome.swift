//
//  Palindrome.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 08.11.2021.
//

import Foundation

let string: String = readLine()!
var stringArray: [String] = []
var ans: Int = 0

for char in string {
    stringArray.append(String(char))
}

if stringArray.count % 2 == 0 {
    for i in 0...stringArray.count / 2 - 1 {
        if stringArray[i] != stringArray[stringArray.count - 1 - i] {
            stringArray[stringArray.count - 1 - i] = stringArray[i]
            ans += 1
        }
    }
} else {
    if stringArray.count == 1 {
        ans = 0
    } else {
        for i in 0...Int(stringArray.count / 2) - 1 {
            if stringArray[i] != stringArray[stringArray.count - 1 - i] {
                stringArray[stringArray.count - 1 - i] = stringArray[i]
                ans += 1
            }
        }
    }
}

print(ans)
