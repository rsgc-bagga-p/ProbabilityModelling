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
    private var averageTotal : CLongLong = 0
    private var testCounter : CLongLong = 0
    
    
    func testMode() {
        
        while testCounter < 100 {
            
            gameFunctions.gameLogic()
            
            averageTotal += gameBoard.total
            
            gameBoard.total = 0
            
            testCounter += 1
            
            gameFunctions.resetChecker()
            
        }
        
        print(averageTotal/testCounter)
        
    }
    
}
