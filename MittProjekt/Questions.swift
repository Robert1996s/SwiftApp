//
//  AllQuestions.swift
//  MittProjekt
//
//  Created by Robert Sundin on 2020-02-12.
//  Copyright © 2020 Robert Sundin. All rights reserved.
//

import UIKit

class Questions {
    
    
    
    var questions = [QuestionObject]()
        
    init() {
        let q1 = QuestionObject(question: "How many years did the WW1 last?" , answer: 4)
            questions.append(q1)
        
        let q2 = QuestionObject(question: "Zlatans number in Barcelona?", answer: 9)
            questions.append(q2)
        
        let q3 = QuestionObject(question: "What is X?", answer: 10)
            questions.append(q3)
        
        let q4 = QuestionObject(question: "How many kilos are 17 pounds? (round off)" , answer: 8)
            questions.append(q4)
        
        let q5 = QuestionObject(question: "Players on the field in handball? (one team)", answer: 7)
            questions.append(q5)
        
        let q6 = QuestionObject(question: "Judges in a football/soccer game?", answer: 4)
        questions.append(q6)
        
        let q7 = QuestionObject(question: "How many challenges does a tennis player have?", answer: 3)
        questions.append(q7)
        
        let q8 = QuestionObject(question: "A dice opposite sides sum?", answer: 7)
        questions.append(q8)
        
        let q9 = QuestionObject(question: "The fifth decimal om pi 3.14…?", answer: 9)
        questions.append(q9)
        
        let q10 = QuestionObject(question: "7 oz in dl?", answer: 9)
        questions.append(q10)
        
        let q11 = QuestionObject(question: "Hexagon edges?", answer: 6)
        questions.append(q11)
        
        let q12 = QuestionObject(question: "Hydrogen atom number?", answer: 1)
        questions.append(q12)
        
        let q13 = QuestionObject(question: "How many balls in a row do you have to win in tennis to get a game?", answer: 4)
        questions.append(q13)
        
        let q14 = QuestionObject(question: "How many games in tennis is one set?", answer: 6)
        questions.append(q14)
        
        let q15 = QuestionObject(question: "Maradona shirt number?", answer: 10)
        questions.append(q15)
        
        let q16 = QuestionObject(question: "How many olympic games has Sweden hold?", answer: 1)
        questions.append(q16)
        
        let q17 = QuestionObject(question: "How many members was The Beatles?", answer: 4)
        questions.append(q17)
        
        let q18 = QuestionObject(question: "Harry Potter Movies?", answer: 8)
        questions.append(q18)
        
        let q19 = QuestionObject(question: "Breaking Bad seasons?", answer: 5)
        questions.append(q19)
        
        let q20 = QuestionObject(question: "Lord of the Rings movies?", answer: 3)
        questions.append(q20)
        
        let q21 = QuestionObject(question: "Batman movies? (after the 2000)", answer: 3)
        questions.append(q21)
        
        let q22 = QuestionObject(question: "How many dream levels are there in the movie inception?", answer: 3)
        questions.append(q22)
        
        let q23 = QuestionObject(question: "How many taken movies are made?", answer: 3)
        questions.append(q23)
        
        let q24 = QuestionObject(question: "GTA V main characters?", answer: 3)
        questions.append(q24)
        
        let q25 = QuestionObject(question: "League of legends players in a team? (standard game)", answer: 5)
        questions.append(q25)
        
        let q26 = QuestionObject(question: "Counterstrike wingman team players?", answer: 2)
        questions.append(q26)
        
        shuffleArray ()
    }
    
    func shuffleArray () {
        questions.shuffle()
    }
    
    
    
}
