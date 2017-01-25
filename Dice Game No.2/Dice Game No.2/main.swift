//
//  main.swift
//  Dice Game No.2
//
//  Created by Puneet Singh Bagga on 2017-01-16.
//  Copyright © 2017 Puneet Singh Bagga. All rights reserved.
//

import Foundation



//class Dice {
//    var sides: Int = 0
//    init(sides: Int){
//        self.sides = sides
//    }
//    
//    func roll (times: Int = 5) {
//        
//        for _ in 0...times {
//            averageRoll += Int(arc4random_uniform(UInt32(dice.sides)))
//        }
//        return averageRoll = averageRoll / times
//    }
//}

var playGame = PlayerInput()

if playGame.promtPlayer() == true {
    
    var game = Game()
    
    game.playGame()
    
} else {
    
    print("Sorry to hear that, have a good day!")
}
