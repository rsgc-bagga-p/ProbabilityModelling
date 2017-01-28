//
//  game.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-25.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

class Game { //the game
    init(){
        
    }
    
    struct Gameboard {
        var userInput : String = "" //user input variable
        var board = [String]()  //game board values
        var diceVal: Int = 0 //diceValue
        var availableVal = [Bool]()
        var total: Int = 0
        var roll: Int = 0
        var diceRoll = [String]()
        
        init(userInput: String, board: [String]){
            
            self.userInput = userInput
            self.board = board
            self.diceVal = 0
            self.availableVal = [true,true,true,true,true]
            self.roll = 0
            
        }
        
    }
    
    var gameBoard = Gameboard(userInput: "h", board: [" "])
    
    
    func diceRoll() -> String {

            gameBoard.roll = ((Int(arc4random_uniform(UInt32(6))) + 1) + (Int(arc4random_uniform(UInt32(6))) + 1))
        
        return String(gameBoard.roll)
    }
    
    func playGame() {
        
        let gameBoardInput = PlayerInput()
        
        gameBoard.userInput = gameBoardInput.askForGameBoard()
        
        gameBoard.board = gameBoard.userInput.components(separatedBy: " ")
        
        for _ in 0...gameBoard.board.count - 1 {
            gameBoard.diceRoll.append(diceRoll())
        }
        
        //print(gameBoard.diceRoll)
        
        //see which numbers get to be crossed off
        
        for i in 0...gameBoard.board.count - 1 {
            
            for j in 0...gameBoard.board.count - 1 {
                
                if gameBoard.board[i] == gameBoard.diceRoll[j] {
                    
                    if gameBoard.availableVal[i] == true {
                        
                        gameBoard.availableVal[i] = false
                        
                    } else {
                        
                        gameBoard.availableVal[i] = true
                        
                    }
                    
                }
                
            }
            
        }
        
        print(gameBoard.availableVal)
        print(gameBoard.diceRoll)
        
        for t in 0...gameBoard.availableVal.count - 1 {
            
            if gameBoard.availableVal[t] == true {
                
                gameBoard.total += Int(gameBoard.board[t])!
                
            }
            
        }
        
        print(gameBoard.total)
        
    }
    
}
