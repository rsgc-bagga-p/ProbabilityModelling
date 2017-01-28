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
        
        print(gameBoard.board)
        
        while testCounter < 100 {
            
            for _ in 0...gameBoard.board.count - 1 {
                gameBoard.diceRoll.append(gameFunctions.diceRoll())
            }
            
            testLogic()
    
            for t in 0...gameBoard.availableVal.count - 1 {
                
                if gameBoard.availableVal[t] == true {
                    
                    averageTotal += CLongLong(gameBoard.board[t])!
                    
                }
                
            }
            
            print(gameBoard.diceRoll)
            print(gameBoard.availableVal)
            
            resetChecker()
            
            resetDice()
            
            testCounter += 1
        }
        
        print(averageTotal/testCounter)
    
    }
    
   func resetDice(){
    gameBoard.diceRoll.removeAll()
    }
    
    func resetChecker() {
        for i in 0...gameBoard.availableVal.count - 1 {
            gameBoard.availableVal[i] = true
        }
    }
    
    func testLogic() {
        
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
        
    }

}
