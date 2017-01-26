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
    
}














//
//    repeat {
//
//        print("Please enter your game board values with spaces between them.", terminator:"\n")
//
//        if let input = readLine(strippingNewline: true){ // read the command line
//
//            if input != "" { // if there is anything to be read then...
//
//                var userInput = input //place input into variable
//
//                //seperates input into array
//                gameBoard.board = gameBoard.userInput.components(separatedBy: " ")
//
//            } else {
//
//                print("please enter values") //error line
//
//            }
//
//        }
//
//    } while gameBoard.userInput == "" && gameBoard.board.count == 5 // if there is anything inputed and the gameBoard array has all five values
//
//    //repeat {
//    //
//    //    print("Enter your preferred dice sides.", terminator: "\n")
//    //
//    //    if let input2 = readLine(strippingNewline: true) {
//    //
//    //        if let input2AsInteger = Int(input2) {
//    //
//    //            gameBoard.diceInput = input2AsInteger
//    //
//    //        } else {
//    //
//    //            print("Please enter your preferred dice sides.")
//    //
//    //        }
//    //
//    //        if gameBoard.diceInput < 6 {
//    //
//    //            print("Please enter a positive value above 5.")
//    //
//    //        }
//    //
//    //    }
//    //
//    //
//    //} while gameBoard.diceInput == 0 && gameBoard.diceInput < 5
//    //
//    
//    print(gameBoard.board) //check
//    
//}
//}
