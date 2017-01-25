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
        var averageRoll: Int = 0
        
        init(userInput: String, board: [String]){
            
            self.userInput = userInput
            self.board = board
            self.diceVal = 0
            self.availableVal = [true]
            self.averageRoll = 0
            
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
    
    func diceRoll(times: Int = 5){
        for _ in 0...times {
            gameBoard.averageRoll += Int(arc4random_uniform(UInt32(6))) + 1
        }
        return gameBoard.averageRoll = gameBoard.averageRoll / times
    }
    
    func playGame() {
        
        
        
        
    }
    
}
