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
    
    var options [String]
    var correctAnswer : String
    
    init (question : String, options : [String]) {
        self.question = question
        self.options = options
        self.correctAnswer = options[0]
    }
}

class cardCollection {
    
    //Single Instance of the card collection
    public static var instance : cardCollection = cardCollection()
    
    public private(set) var cards : [Flashcard]
    public private(set) var currentIndex : Int 
    private init () {
    }
}
