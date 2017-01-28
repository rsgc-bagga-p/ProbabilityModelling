//
//  promptUser.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-24.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

class PlayerInput {
    
    private var initialInput: String = ""
    private var gameBoardInput: String = ""
    private var modeInput: String = ""
    
    init(){
    }
    
    func promtPlayer() -> Bool {
        
        
        repeat {
            
            print("Would you like to play? (Yes/No)", terminator:"\n")
            
            if let input = readLine(strippingNewline: true){
                
                if input != "" { // if there is anything to read then...
                    
                    let initialInput = input //place input into variable
                    
                    //print(initialInput)
                    
                    if initialInput != "Yes" && initialInput != "No" {
                        
                        print("Please only write Yes or No")
                    }
                    
                }
                
            }
        } while initialInput != "Yes" && initialInput != "No"
        
        return true
    }
    
    func askForGameBoard() -> String {
        
        repeat {
            
            print("Please enter your game board values with spaces between them.", terminator:"\n")
            
            if let input = readLine(strippingNewline: true){ // read the command line
                
                if input != "" { // if there is anything to be read then...
                    
                    let userInput = input //place input into variable
                    
                    //seperates input into array
                    gameBoardInput = userInput
                    
                } else {
                    
                    print("please enter values") //error line
                    
                }
                
            }
            
        } while gameBoardInput == "" // if there is anything inputed then let go
        
        return gameBoardInput
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
        
        return modeInput
        
    }
    
} 
