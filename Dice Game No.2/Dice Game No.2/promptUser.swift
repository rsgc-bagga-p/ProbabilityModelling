//
//  promptUser.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-24.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

class PlayerInput { //player input class declaration
    
    private var gameBoardInput: String = "" //game board input string
    private var modeInput: String = "" //mode input string
    private var gameBoardArrayTest = [String]()
    
    init(){ //initialize nothing
    }
        
    func askForGameBoard() -> String {
        
        repeat {
            
            print("Please enter your game board values with spaces between them.", terminator:"\n")
            
            if let input = readLine(strippingNewline: true){ // read the command line
                
                if input != "" { // if there is anything to be read then...
                    
                    let userInput = input //place input into variable
                    
                    //place unwrapped value into gameBoard variable
                    gameBoardInput = userInput
                    
                    //split into array for testing
                    gameBoardArrayTest = gameBoardInput.components(separatedBy: " ")
                    
                } else {
                    
                    print("please enter values") //error line
                    
                }
                
            }
            
        } while gameBoardInput == "" || gameBoardArrayTest.count != 5 // if there is anything inputed then let go
        
        return gameBoardInput //return the board input value
    }
    
    func askForMode() -> String {
        
        repeat {
            
            print("Which Mode? (Test/Play) ", terminator:"\n")
            
            if let input = readLine(strippingNewline: true){ // read the command line
                
                if input != "" { // if there is anything to be read then...
                    
                    let userInput = input //place input into variable
                    
                    //seperates input into array
                    modeInput = userInput
                    
                } else {
                    
                    print("please enter values") //error line
                    
                }
                
            }
            
        } while modeInput == "" // if there is anything inputed then let go
        
        return modeInput //return the mode input value
        
    }
    
}
