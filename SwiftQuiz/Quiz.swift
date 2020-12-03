//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Thiago Cardoso on 01/12/20.
//

import Foundation

class Quiz{
    
    let question: String
    let options: [String]
    private let correctedAnswers: String
    
    init(question: String, options: [String], correctedAnswers: String) {
        self.question = question
        self.options = options
        self.correctedAnswers = correctedAnswers
    }
    
    func validadeOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == correctedAnswers
    }
    
    deinit {
        print("Liberou quiz da memoria")
    }
        
}
