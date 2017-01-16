//
//  main.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-16.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation

var gameBoardInput : String = ""

repeat {
    
    print("Please enter your game board values with spaces between them.", terminator:"\n")
    
    if let input = readLine(strippingNewline: true){
        
        if input != "" {
            
            gameBoardInput = input
            
        } else {
            
            print("please enter values")
            
        }
}
    
} while gameBoardInput == "" && gameBoardInput.characters.count != 9

let gameBoardArray = gameBoardInput.components(separatedBy: " ")
