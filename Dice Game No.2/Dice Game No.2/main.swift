//
//  main.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-16.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

var gameBoardInput : String = "" //user input variable
var gameBoardArray = [String]()  //game board values
var diceSides: Int = 0

repeat {
    
    print("Please enter your game board values with spaces between them.", terminator:"\n")
    
    if let input = readLine(strippingNewline: true){ // read the command line
        
        if input != "" { // if there is anything to be read then...
            
            gameBoardInput = input //place input into variable
            
            //seperates input into array
            gameBoardArray = gameBoardInput.components(separatedBy: " ")
            
        } else {
            
            print("please enter values") //error line
            
        }
}
 
    repeat {
        
        print("Enter your preferred dice sides.", terminator: "\n")
        
        if let input2 = readLine(strippingNewline: true) {
            
            if let input2AsInteger = Int(input2) {
                
                diceSides = input2AsInteger
                
            } else {
                
                print("Please enter your preferred dice sides.")
                
            }
            
        }
        
        
    } while diceSides == 0
    
    
} while gameBoardInput == "" && gameBoardArray.count == 5 // if there is anything inputed and the gameBoard array has all five values

print(gameBoardArray) //check



class Dice {
    var sides: Int
    init(sides: Int){
        self.sides = sides
    }
}


