//
//  testMode.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-28.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

class Mode {
    
    init (){
        
        
    }
    
    var gameBoard = Gameboard()
    var gameFunctions = Game()
    var gameBoardInput = PlayerInput()
    private var averageTotal : CLongLong = 0
    private var testCounter : CLongLong = 0
    
    
    func testMode() {
        
        gameBoard.userInput = gameBoardInput.askForGameBoard()
        
        gameBoard.board = gameBoard.userInput.components(separatedBy: " ")
        
        while testCounter < 100 {
            
            for _ in 0...gameBoard.board.count - 1 {
                gameBoard.diceRoll.append(gameFunctions.diceRoll())
            }
            
            gameFunctions.gameLogic()
            
            for t in 0...gameBoard.availableVal.count - 1 {
                
                if gameBoard.availableVal[t] == true {
                    
                    averageTotal += CLongLong(gameBoard.board[t])!
                    
                }
                
            }
        
            gameBoard.total = 0
            
            gameFunctions.resetChecker()
            
            resetDice()
            
            testCounter += 1
        }
        
        print(averageTotal/testCounter)
        
    }
    
   func resetDice(){
    
    for p in 0...gameBoard.board.count - 1 {
    gameBoard.diceRoll[p] = " "
    }
    
    }

}
