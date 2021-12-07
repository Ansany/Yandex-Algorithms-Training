//
//  FindWay.swift
//  Yandex-Algorithms-Training
//
//  Created by Andrey Alymov on 07.12.2021.
//

import Foundation

let colRow = readLine()!.split{$0 == " "}.map{ Int($0)! }
let nRow = colRow[0], mCol = colRow[1]
let startFinish = readLine()!.split{$0 == " "}.map{ Int($0)! }
let start = (startFinish[0], startFinish[1]), finish = (startFinish[2], startFinish[3])

var gameField: [[Int]] = []
var newField: [[Int]] = []


for _ in 1...nRow {
    gameField.append(readLine()!.split{$0 == " "}.map{ Int($0)! })
}
for _ in 1...nRow {
    newField.append(Array(repeating: 0, count: mCol))
}

func findWay(startX: Int, startY: Int, finishX: Int, finishY: Int) {
    var step: Int = 0
    var y = 0
    var x = 0
    var add: Bool = true
    for _ in 0..<nRow {
        for _ in 0..<mCol {
            if x == mCol {
                x = mCol - 1
            }
            if gameField[y][x] == 1 {
                newField[y][x] = -2 // wall
            } else {
                newField[y][x] = -1 // not yet step
            }
            x += 1
        }
        x = 0
        y += 1
    }
    newField[finishY][finishX] = 0 // start from finish
    while add {
        add = false
        for _ in 0..<mCol {
            for _ in 0..<nRow{
                if newField[x][y] == step {
                    if (y - 1) >= 0 && newField[x-1][y] != -2 && newField[x - 1][y] == -1 {
                        newField[x-1][y] = step + 1
                    }
                    if (x - 1) >= 0 && newField[x][y-1] != -2 && newField[x][y - 1] == -1 {
                        newField[x][y-1] = step + 1
                    }
                    if (y + 1) < mCol && newField[x+1][y] != -2 && newField[x+1][y] == -1 {
                        newField[x+1][y] = step + 1
                    }
                    if (x + 1) < nRow && newField[x][y + 1] != -2 && newField[x][y+1] == -1 {
                        newField[x][y+1] = step + 1
                    }
                }
                x += 1
            }
            y += 1
            step += 1
            add = true
            if newField[startY][startX] != -1 {
                add = false
                print("Reshenie naideno")
            }
            if step > (nRow * mCol) {
                add = false
                print("Reshenie ne naideno")
            }
        }
    }
}
findWay(startX: start.0, startY: start.1, finishX: finish.0, finishY: finish.1)


//let startPoint = gameField[start.0][start.1]
//var stepW =
//var currentPositionX = 0
//var currentPositionY = 0
//
//if currentPositionX == 0 && stepN {
//    currentPositionX += (gameField.count - 1)
//}
//if currentPositionX == (nRow - 1) && stepS {
//    currentPositionX = 0
//}
//if stepS {
//    currentPositionX += 1
//}
//
//if currentPositionY == 0 && stepW {
//    currentPositionY += (mCol - 1)
//}
//if currentPositionY == (mCol - 1) && stepE {
//        currentPositionY = 0
//}


//let array = readLine()!.split {$0 == " "}
//let w = Int(array[0])!
//let h = Int(array[1])!
//var a = 0
//for row_min in 0...h - 1 {
//    for row_max in row_min...h - 1 {
//        for col_min in 0...w - 1 {
//            for col_max in col_min...w - 1 {
//                a += col_max
//            }
//        }
//    }
//}
//print(a)

