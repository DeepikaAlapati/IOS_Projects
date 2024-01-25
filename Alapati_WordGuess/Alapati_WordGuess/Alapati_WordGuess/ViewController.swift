//
//  ViewController.swift
//  Alapati_WordGuess
//
//  Created by student on 3/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!

    
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var guessLetterbtn: UIButton!
    
    @IBOutlet weak var playAgainbtn: UIButton!
    
    var wordsToGuess = [["Tulips", "Flower"],
                 ["Basketball", "Game"],
                 ["Starbucks", "Coffee"],
                 ["Guitar", "Musical instrument"],
                 ["MrBean","Cartoon"]]
    var hint = ""

    var img = ["img1","img2","img3","img4","img5"]
    var Guess = ""
    var wordToGuessIndex = 0
    let maxNumberOfWrongGuesses = 10
    var wrongGuessesRemaining = 10
    var guessCount = 0
    var lettersGuessed = ""
    var wordsGuessedCount = 0
    var wordsMissedCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Guess = wordsToGuess[wordToGuessIndex][0]
        hint = wordsToGuess[wordToGuessIndex][1]
        hintLabel.text = "HINT: " + hint
        wordsGuessedLabel.text = "Total number of words guessed successfully : 0"
        totalWordsLabel.text = "Total number of words in game :\(wordsToGuess.count)"
        wordsRemainingLabel.text = "Total number of words remaining in game:\(wordsToGuess.count)"
        formatUserGuessLabel()
        guessLetterbtn.isEnabled = false
        statusLabel.text = ""
        playAgainbtn.isHidden = true
            }
            
            func updateWordCountLabels(){
                    wordsGuessedLabel.text = "Total number of words guessed successfully : \(wordsGuessedCount)"
                    wordsRemainingLabel.text = "Total number of words remaining in game : \(wordsToGuess.count - (wordsGuessedCount + wordsMissedCount))"
                }
                func updateUIAfterGuess(){
                    guessLetterField.resignFirstResponder()
                    guessLetterField.text = ""
                    
                }
    func formatUserGuessLabel() {
               var revealedWord = ""
               lettersGuessed += guessLetterField.text!
               for letter in Guess {
                   if lettersGuessed.contains(letter) {
                       revealedWord = revealedWord + " \(letter)"
                   } else {
                       revealedWord += " _"
                   }
               }
               revealedWord.removeFirst()
               userGuessLabel.text = revealedWord
           }
           func guessALetter() {
               formatUserGuessLabel()
               guessCount += 1
               let currentLetterGuessed = guessLetterField.text!
               if !Guess.contains(currentLetterGuessed) {
                   wrongGuessesRemaining = wrongGuessesRemaining - 1
               }
               let revealedWord = userGuessLabel.text!
               if wrongGuessesRemaining == 0 {
                   playAgainbtn.isHidden = false
                   guessLetterField.isEnabled = false
                   guessLetterbtn.isEnabled = false
                   guessCountLabel.text = "You're all out of guesses. Try again?"
                   wordsMissedCount += 1
                   updateWordCountLabels()
                   WrongGuess()
               } else if !revealedWord.contains("_") {
                   playAgainbtn.isHidden = false
                   guessLetterField.isEnabled = false
                   guessLetterbtn.isEnabled = false
                   guessCountLabel.text = "You've got it! It took you \(guessCount) guesses to guess the word!"
                   wordsGuessedCount += 1
                   updateWordCountLabels()
                   updatedisplayImage()
               } else {
                   // Update our guess count
                   let guess = ( guessCount == 1 ? "Guess" : "Guesses")
                   guessCountLabel.text = "You've Made \(guessCount) \(guess)"
               }
               if (wordsGuessedCount + wordsMissedCount) == wordsToGuess.count {
                   guessCountLabel.text = "You've tried all of the words! Restart from the beginning?"
                   statusLabel.text = "Congratulations, You are done, Please start over again"
                   displayImage.image = UIImage(named: "alldone")
               }
           }
       func updatedisplayImage(){
                       displayImage.isHidden = false
           displayImage.image = UIImage(named: img[wordToGuessIndex] as! String)
       }
           func WrongGuess(){
               displayImage.isHidden = false
               displayImage.image = UIImage(named: "")
           }
    
    @IBAction func guessLetterButtonPressed(_ sender: Any) {
        guessALetter()
                        updateUIAfterGuess()
                        let letter = guessLetterField.text
                        if letter?.isEmpty == true{
                            guessLetterbtn.isEnabled = false
                        }
                        else{
                            guessLetterbtn.isEnabled = true
                        }
    }
    
    
    @IBAction func guessLetterField(_ sender: UITextField) {
        if let letterGuessed = guessLetterField.text?.last {
                           guessLetterField.text = "\(letterGuessed)"
                           guessLetterbtn.isEnabled = true
                       } else {
                           guessLetterbtn.isEnabled = false
                       }
}
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        displayImage.isHidden = true
                        wordToGuessIndex += 1
                        if wordToGuessIndex == wordsToGuess.count {
                            wordToGuessIndex = 0
                            wordsGuessedCount = 0
                            wordsMissedCount = 0
                            updateWordCountLabels()
                        }
                        Guess = wordsToGuess[wordToGuessIndex][0]
                        hint = wordsToGuess[wordToGuessIndex][1]
                        hintLabel.text = "HINT: " + hint
                        
                        playAgainbtn.isHidden = true
                        guessLetterField.isEnabled = true
                        guessLetterbtn.isEnabled = false
                        
                        wrongGuessesRemaining = maxNumberOfWrongGuesses
                        lettersGuessed = ""
                        formatUserGuessLabel()
                        guessCountLabel.text = "You've Made 0 Guesses"
                        guessCount = 0
        
    }
}

