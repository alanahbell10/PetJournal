//
//  testViewModel.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//
import Foundation
import SwiftUI

class JournalViewModel: ObservableObject {
    
    // MARK: - Published properties
    @Published private var journal = Journal()
    var entry1: Entry = Entry(caption: "", photoString: "test.jpeg")
    var entry2: Entry = Entry(caption: "", photoString: "test.jpeg")
    var entryArray: Array<Entry> = [Entry(), Entry(), Entry()]
    @Published private var testJournal = Journal(entries: [Entry(), Entry(), Entry()], newEntry: Entry())
    var testJournal1 = Journal(entries: [Entry(), Entry(), Entry()], newEntry: Entry())
    //@Published private var entryTest = Entry()
    
    
    // MARK: - Internal properties
    
    /*var currentQuestion: Question {
        game.currentQuestion
    }
            
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    // MARK: - Internal Methods
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }*/
}


