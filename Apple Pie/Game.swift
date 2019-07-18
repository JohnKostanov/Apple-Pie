//
//  Game.swift
//  Apple Pie
//
//  Created by  Джон Костанов on 18/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

struct Game {
    var word: String // угадываемое слово
    
    var incorrectMovesRemaining: Int // количество оставшихся попыток
    
    //  список нажатых букв
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        
        // проверяем содержится ли буква в слове
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
