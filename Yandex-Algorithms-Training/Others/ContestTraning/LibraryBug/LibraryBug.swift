//
//  LibraryBag.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 03.12.2021.
//

import Foundation

var fromFile = [String]()

while true {
    let str = readLine()
    if str == nil {
        break
    }
    fromFile.append(str!)
}

var ans = Array(repeating: "", count: fromFile.count + 1)

for str in fromFile {
 if str != "" {
     let key = str.filter{$0.isNumber}
     ans[Int(key)!] = str.replacingOccurrences(of: key, with: "")
    }
}

ans.dropFirst().forEach{ print($0)}

//MARK: - #1

//let filename = "input.txt"
//var contents = try! String(contentsOfFile: filename).split(separator: "\n")

