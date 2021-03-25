//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Edilton Danniken on 25/03/21.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
}
