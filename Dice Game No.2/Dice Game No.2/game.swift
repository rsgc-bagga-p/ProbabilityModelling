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
            self.availableVal = [true]
            self.roll = 0
            
        }
        
    }
    
    var gameBoard = Gameboard(userInput: "h", board: [" "])
    
//    func playGame (play: Bool, rollValue: Int) -> Int {
//        
//        for i in 0...gameBoard.board.count {
//            
//            if gameBoard.board[i] == String(rollValue) {
//                
//                
//            }
//            
//        }
//        
//        return gameBoard.total
//    }
    
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
        
        print(gameBoard.diceRoll)
        
    }
    
}
