//
//  FootballTeam.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 23.11.2021.
//

// Метод: 2 указатея

import Foundation

func bestSum(players: [Int]) -> Int {
    let sortedPlayers = players.sorted()
    var bestSum = 0
    var currentSum = 0
    var strongPlayer = 0
    for weakPlayer in 1..<players.count {
        while strongPlayer < players.count && (strongPlayer == weakPlayer || sortedPlayers[weakPlayer] + sortedPlayers[weakPlayer + 1] >= sortedPlayers[strongPlayer]) {
            currentSum += sortedPlayers[strongPlayer]
            strongPlayer += 1
        }
        bestSum = max(bestSum, currentSum)
        currentSum -= sortedPlayers[weakPlayer]
    }
    
    return bestSum
}

let array = readLine()?
    .split {$0 == " "}
    .map (String.init)
let list = array!.compactMap { Int($0)!}

print(bestSum(players: list))

