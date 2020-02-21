//
//  QuestionClass.swift
//  MittProjekt
//
//  Created by Robert Sundin on 2020-02-07.
//  Copyright © 2020 Robert Sundin. All rights reserved.
//

import UIKit

class QuestionObject {
    
    var question: String
    var answer: Int
    
    
    init(question: String, answer: Int){
        self.answer = answer
        self.question = question
    }
}
