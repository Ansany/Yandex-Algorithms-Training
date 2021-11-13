//
//  Elections.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 11.11.2021.
//

import Foundation

var dict: [String : Int] = [:]

while let lines = readLine()?.split(whereSeparator: {$0 == " "}).map(String.init) {
    
    if lines != [] {
        if dict.isEmpty {
            dict[lines[0]] = Int(lines[1])
        } else {
            
            for item in dict {
                if item.key == lines[0] {
                    dict[item.key]! += Int(lines[1])!
                } else {
                    dict[lines[0]] = Int(lines[1])
                }
            }
        }
    } else {
        for (nameS, voices) in dict.sorted(by: { $0.0 < $1.0 }) {
            print("\(nameS) \(voices)")
        }
    }
}
