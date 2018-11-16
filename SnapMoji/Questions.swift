//
//  Questions.swift
//  SnapMoji
//
//  Created by Josh Baltar on 2018-11-14.
//  Copyright © 2018 Mojo Mojis. All rights reserved.
//

import Foundation

class Question {
    var difficulty: Int
    let questionImage: UIImage
    //let sampleImage: String
    let question: String
    let choiceA: String
    let choiceB: String
    let choiceC: String
    let choiceD: String
    let correctAnswer: Int
    
    init(image: UIImage, questionText: String, userChoiceA: String, userChoiceB: String, userChoiceC: String, userChoiceD: String, answer: Int, chosenDifficulty: Int) {
        questionImage = image
        question = questionText
        choiceA = userChoiceA
        choiceB = userChoiceB
        choiceC = userChoiceC
        choiceD = userChoiceD
        correctAnswer = answer
        difficulty = chosenDifficulty
    }
}
