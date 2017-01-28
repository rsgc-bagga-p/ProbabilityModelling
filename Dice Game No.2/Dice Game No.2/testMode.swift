//
//  testMode.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-28.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

class Mode { //mode class (meant for testMode)
    
    //initialize nothing
    init (){
        
        
    }
    
    //create the objects to use functions in different classes
    var gameBoard = Gameboard()
    var gameFunctions = Game()
    var gameBoardInput = PlayerInput()
    
    //variables for the test scenario, total and counter
    private var averageTotal : CLongLong = 0
    private var testCounter : CLongLong = 0
    
    
    func testMode() { //test game play
        
        //get the board and split into an array
        gameBoard.userInput = gameBoardInput.askForGameBoard()
        
        gameBoard.board = gameBoard.userInput.components(separatedBy: " ")
        
        print(gameBoard.board) //print game board
        
        while testCounter < 100 { // do it 100 times and then take the average
            
            
            //roll the dice
            for _ in 0...gameBoard.board.count - 1 {
                gameBoard.diceRoll.append(gameFunctions.diceRoll())
            }
            
            testLogic() //run the logic
            
            //create the total over the 100 tries
            for t in 0...gameBoard.availableVal.count - 1 {
                
                if gameBoard.availableVal[t] == true {
                    
                    averageTotal += CLongLong(gameBoard.board[t])!
                    
                }
                
            }
            //print to command line
            print(gameBoard.diceRoll)
            print(gameBoard.availableVal)
            
            resetChecker() //reset the checking array (available values)
            
            resetDice() //reset the dice array
            
            testCounter += 1 //increment the counte
        }
        
        print(averageTotal/testCounter) //print the average, the lower the better
        
    }
    
    //reset the dice function
    func resetDice(){
        gameBoard.diceRoll.removeAll()
    }
    
    //reset the available value array
    func resetChecker() {
        for i in 0...gameBoard.availableVal.count - 1 {
            gameBoard.availableVal[i] = true
        }
    }
    
    
    //logic, same are the gameLogic function
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
