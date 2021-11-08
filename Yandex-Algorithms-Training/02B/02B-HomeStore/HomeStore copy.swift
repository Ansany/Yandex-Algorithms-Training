//
//  Schools.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 08.11.2021.
//

import Foundation

let N = Int(readLine()!)!

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)

let housesArray = array!.compactMap { Int($0)!}

print(housesArray[(N/2)])
