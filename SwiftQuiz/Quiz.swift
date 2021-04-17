//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Felipe Guimarães on 16/04/21.
//

import Foundation

class Quiz {
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctAnswer
        
        //TODO - Apagar
        print("Quiz class initiated succefully.")
    }
    
    func ValidateOption(_ index: Int) -> Bool {
        let answer = options[index]
        
        //TODO - Apagar
        print("Opção selecionada é correta? \(answer)")
        
        return answer == correctedAnswer
    }
    
    deinit {
        print("Liberou quiz da memória")
    }
}
