//
//  game.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-25.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

// variables to be used throughout the code, used for the logic and everything
struct Gameboard {
    var userInput : String = "" //user input variable
    var board = [String]()  //game board values
    var diceVal: Int = 0 //diceValue
    var availableVal = [Bool]() //which numbers on the game board are not crossed out (in the end)
    var total: Int = 0 //total for normal play
    var roll: Int = 0 //the value of the dice roll
    var diceRoll = [String]() //dice roll array
    var finished : Bool = true //is it finished?
    
    //initialize the variables
    init(){
        self.userInput = ""
        self.board = [" "]
        self.diceVal = 0
        self.availableVal = [true,true,true,true,true]
        self.roll = 0
        self.finished = true
        
    }
    
}

class Game { //the game
    
    //initializer, does nothing
    init(){
        
    }
    
    var gameBoard = Gameboard() // create a variable of type Gameboard
    
    //roll the dice
    func diceRoll() -> String {
        
        gameBoard.roll = ((Int(arc4random_uniform(UInt32(6))) + 1) + (Int(arc4random_uniform(UInt32(6))) + 1)) //2 die roll
        
        return String(gameBoard.roll) //return dice value
    }
    
    func playGame() { //play the game normally
        
        let gameBoardInput = PlayerInput() // create an object of the player input class to use those functions
        
        gameBoard.userInput = gameBoardInput.askForMode() //set the user input to which user choice of mode
        
        if gameBoard.userInput == "Play" { //if user picks play mode then...
            
            gameBoard.userInput = gameBoardInput.askForGameBoard() //set the user input as the game board input
            
            gameBoard.board = gameBoard.userInput.components(separatedBy: " ") //seperate the input into an array
            
            gameLogic() //run the logic
            
            
            //Find the total value
            for t in 0...gameBoard.availableVal.count - 1 {
                
                if gameBoard.availableVal[t] == true {
                    
                    gameBoard.total += Int(gameBoard.board[t])!
                    
                }
                
            }
            
            //print the total to the command line
            print(gameBoard.total)
            
        } else { // if test mode chosen...
            
            let testMode = Mode() // create an object of the mode class (testMode.swift)
            
            testMode.testMode() //run the test mode
            
        }
        
        
    }
    
    func gameLogic() { //Game logic for normal mode
        
        //roll the dice and put it in the array
        for _ in 0...gameBoard.board.count - 1 {
            gameBoard.diceRoll.append(diceRoll())
        }
        
        //see which numbers get to be crossed off
        for i in 0...gameBoard.board.count - 1 {
            
            for j in 0...gameBoard.board.count - 1 {
                
                if gameBoard.board[i] == gameBoard.diceRoll[j] {
                    
                    if gameBoard.availableVal[i] == true { //if true then...
                        
                        gameBoard.availableVal[i] = false //the number is not available
                        
                    } else { //if the number isnt available then...
                        
                        gameBoard.availableVal[i] = true //it is now available
                        
                    }
                    
                }
                
            }
            
        }
        
        //print the available value list and the dice rolls
        print(gameBoard.availableVal)
        print(gameBoard.diceRoll)
        
    }
    
    
    
}
