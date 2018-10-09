//
//  main.swift
//  Restaurant
//
//  Created by Jakub klučovský on 10/7/18.
//  Copyright © 2018 2Builders. All rights reserved.
//

import Foundation

/* GameBoard:
   |   |
---+---+---
   |   |
---+---+---
   |   |
 */

var pos = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
var turn = "X"
print("Enter Player's 1 name: ", terminator:"")
let player1 = readLine()
print("Enter Player's 2 name: ", terminator:"")
let player2 = readLine()

print("\n\nGame Board:")
print(" 7 | 8 | 9 ")
print("---+---+---")
print(" 4 | 5 | 6 ")
print("---+---+---")
print(" 1 | 2 | 3 \n")

var currentTurn = 1
var input: Int?

print("It's \(player1!)'s turn!")

while true {
    var wrongPosition: Bool
    repeat {
    print("Enter a position: ", terminator:"")
    input = Int(readLine()!)
        
        switch input! {
        case 1...9:
            wrongPosition = false
        default:
            wrongPosition = true
        }
        
    } while wrongPosition || pos[input! - 1] == "X" || pos[input! - 1] == "X"
    pos[input! - 1] = turn
    
    print("\n\n", pos[6],"|", pos[7],"|", pos[8],"")
    print("---+---+---")
    print("", pos[3],"|", pos[4],"|", pos[5],"")
    print("---+---+---")
    print("", pos[0],"|", pos[1],"|", pos[2],"\n\n")
    
    if pos[0] == "X" && pos[1] == "X" && pos[2] == "X"
        || pos[3] == "X" && pos[4] == "X" && pos[5] == "X"
        || pos[6] == "X" && pos[7] == "X" && pos[8] == "X"
        || pos[0] == "X" && pos[3] == "X" && pos[6] == "X"
        || pos[1] == "X" && pos[4] == "X" && pos[7] == "X"
        || pos[2] == "X" && pos[5] == "X" && pos[8] == "X"
        || pos[6] == "X" && pos[4] == "X" && pos[2] == "X"
        || pos[0] == "X" && pos[4] == "X" && pos[8] == "X" {
        print("\n\n", player1!, "is the WINNER!")
        break
    }else if pos[0] == "O" && pos[1] == "O" && pos[2] == "O"
        || pos[3] == "O" && pos[4] == "O" && pos[5] == "O"
        || pos[6] == "O" && pos[7] == "O" && pos[8] == "O"
        || pos[0] == "O" && pos[3] == "O" && pos[6] == "O"
        || pos[1] == "O" && pos[4] == "O" && pos[7] == "O"
        || pos[2] == "O" && pos[5] == "O" && pos[8] == "O"
        || pos[6] == "O" && pos[4] == "O" && pos[2] == "O"
        || pos[0] == "O" && pos[4] == "O" && pos[8] == "O" {
        print("\n\n", player2!, "is the WINNER!")
        break
    }
    
    
    currentTurn = currentTurn + 1

    if (currentTurn == 10) {
        print("It's DRAW!")
        break;
    }
    
    if turn == "X" {
        turn = "O"
        print("It's \(player2!)'s turn!")
    } else if turn == "O" {
        turn = "X"
        print("It's \(player1!)'s turn!")
    }
}

