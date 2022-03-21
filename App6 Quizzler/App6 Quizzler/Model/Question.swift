//
//  Question.swift
//  App6 Quizzler
//
//  Created by Eugen Puzynin on 21.03.22.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
