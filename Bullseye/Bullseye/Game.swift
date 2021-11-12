//
//  Game.swift
//  Bullseye
//
//  Created by AMStudent on 8/26/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
}

    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }

    mutating func restart() {
        score = 0
        round = 1
        target  = Int.random(in: 1...100)
    }

//        if sliderValue > self.target {
//            difference = sliderValue - self.target
//        } else if self.target > sliderValue {
//            difference = self.target - sliderValue
//        } else {
//            difference = 0
//        }


//        var difference: Int = self.target - sliderValue
//        if difference < 0 {
//            difference = difference * -1
//        }
}
