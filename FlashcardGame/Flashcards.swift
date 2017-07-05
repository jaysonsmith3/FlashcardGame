//
//  Flashcards.swift
//  FlashcardGame
//
//  Created by iD Student on 7/4/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import Foundation

class Flashcard {
    var question : String
    
    var options : [String]
    var correctAnswer : String
    
    init (question : String, options : [String]) {
        self.question = question
        self.options = options
        self.correctAnswer = options[0]
    }
}












class CardCollection {
    
    //Single Instance of the card collection
    public static var instance : CardCollection = CardCollection()
    
     //The List of Flashcards
    public private(set) var cards : [Flashcard]
    
    // Which question?
    public private(set) var currentIndex : Int
    
    // Get the current card
    public var currentCard : Flashcard {
        get { return cards[currentIndex] }
    }
    
    private init () {
        
    cards = [ Flashcard(question: "What's the capitol of Washington State?", options:["Olympia", "Tacoma", "Seattle", "Spokane"]),
              Flashcard(question: "Where is iD Tech's Headquarters?", options:[ "Campbell, CA", "Albequerque, NM", "Bejing, CN"])]
            
        currentIndex = 0;

        
    }
    
    public func nextQuestion() {
    currentIndex += 1
        if(currentIndex >= cards.count) {
            currentIndex = 0
        }
    }
    
    public func checkAnswer(_selectedAnswer : Int) -> Bool {
        return currentCard.options[_selectedAnswer] == currentCard.correctAnswer
    }
    
}
