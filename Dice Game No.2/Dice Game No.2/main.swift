//
//  main.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-16.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

struct Gameboard {
var userInput : String = "" //user input variable
var board = [String]()  //game board values
var diceInput: Int = 0
    private var availableVal = [Bool]()
    private var total: Int = 0
    
    init(userInput: String, board: [String] , diceInput: Int){
        
        self.userInput = userInput
        self.board = board
        self.diceInput = diceInput
        self.availableVal = [true]
        
    }
    
    func playGame (play: Bool, rollValue: Int) -> Int {
        
        for i in 0...gameBoard.board.count {
            
            if gameBoard.board[i] == String(rollValue) {
                
                
            }
            
        }
       
        return gameBoard.total
    }
    
}

var gameBoard = Gameboard(userInput: "h", board: [" "], diceInput: 0)

repeat {
    
    print("Please enter your game board values with spaces between them.", terminator:"\n")
    
    if let input = readLine(strippingNewline: true){ // read the command line
        
        if input != "" { // if there is anything to be read then...
            
            gameBoard.userInput = input //place input into variable
            
            //seperates input into array
            gameBoard.board = gameBoard.userInput.components(separatedBy: " ")
            
        } else {
            
            print("please enter values") //error line
            
        }
        
    }
    
} while gameBoard.userInput == "" && gameBoard.board.count == 5 // if there is anything inputed and the gameBoard array has all five values

repeat {
    
    print("Enter your preferred dice sides.", terminator: "\n")
    
    if let input2 = readLine(strippingNewline: true) {
        
        if let input2AsInteger = Int(input2) {
            
            gameBoard.diceInput = input2AsInteger
            
        } else {
            
            print("Please enter your preferred dice sides.")
            
        }
        
        if gameBoard.diceInput < 6 {
            
            print("Please enter a positive value above 5.")
            
        }
        
    }
    
    
} while gameBoard.diceInput == 0 && gameBoard.diceInput < 5


print(gameBoard.board) //check



var averageRoll: Int = 0

class Dice {
    var sides: Int = 0
    init(sides: Int){
        self.sides = sides
    }
    
    func roll (times: Int = 5) {
        
        for _ in 0...times {
            averageRoll += Int(arc4random_uniform(UInt32(dice.sides)))
        }
        return averageRoll = averageRoll / times
    }
}

let dice = Dice(sides: gameBoard.diceInput)

print(dice.roll())

