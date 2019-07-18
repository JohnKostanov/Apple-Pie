//
//  ViewController.swift
//  Apple Pie
//
//  Created by  Джон Костанов on 18/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //  список слов для угадывания
    var listOfWords = ["арбуз", "банан", "вертолет", "гномик", "домик"]
    
    
    // количество неверных попыток
    let incorrectMovesAllowed = 7
    
    // количество выигрышей и проигрышей
    var totalWins = 0
    var totalLosses = 0
    
    var currentGame: Game!
    
    
    @IBOutlet var treeImageView: UIImageView!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBOutlet var corectWorldLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // запуск новой игры
        newRound()
        
    }
    
    // запуск новой игры
    func newRound() {
        let newWord = listOfWords.removeFirst()
        
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
        
        updateUI()
    }
    
    // обновление интерфейса
    func updateUI() {
        // обновляем картинку
        let imageName = "Tree \(currentGame.incorrectMovesRemaining)"
        let image = UIImage(named: imageName)
        treeImageView.image = image
        
        // обновляем угадываемое слово
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWwithSpaces = letters.joined(separator: " ")
        corectWorldLabel.text = wordWwithSpaces
        
        //обновляем счет
        scoreLabel.text = "Выигрыши: \(totalWins), проигрыши: \(totalLosses)"
        
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateUI()
    }
    
}

