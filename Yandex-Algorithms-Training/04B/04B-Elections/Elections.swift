//
//  Elections.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 11.11.2021.
//

import Foundation

import Foundation

var dict: [String : Int] = [:]

while let lines = readLine()?.split{$0 == " "}.map(String.init) {
    
    if lines != [] {
        if dict.isEmpty {
            dict[lines[0]] = Int(lines[1])
        } else {
            for key in dict.keys {
                if key == lines[0] {
                    dict[key]! += Int(lines[1])!
                } else {
                    dict[lines[0]] = Int(lines[1])
                }
            }
        }
    } else {
        break
    }
}
for (nameS, voices) in dict.sorted(by: { $0.0 < $1.0 }) {
    print("\(nameS) \(voices)")
}
