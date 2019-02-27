//
//  Database.swift
//  iQuiz
//
//  Created by Anukriti Goyal on 2/26/19.
//  Copyright © 2019 ischoolnikki. All rights reserved.
//

import UIKit

class Categories {
    var name: String
    var description: String
    var icons: String
    var questions: [Questions]
    
    init(nameVal: String, descriptionVal: String, iconsVal: String, questVals: [Questions]) {
        name = nameVal
        description = descriptionVal
        icons = iconsVal
        questions = questVals
    }
}

class Questions {
    var question: String
    var answer: [String]
    var correctAnswer: Int
    
    init(questVal: String, answers: [String], correct: Int) {
        question = questVal
        answer = answers
        correctAnswer = correct
    }
}

let mathQ1 = Questions.init(questVal: "What is the value of π?", answers: ["3.1415926", "3.1421367", "3.1415729", "3.1415927"], correct: 0)

let mathQ2 = Questions.init(questVal: "What is the newest shape discovered naturally existing in nature?", answers: ["Crytoid", "Cellugon", "Scutoid", "Sporium"], correct: 2)

let marvelQ1 = Questions.init(questVal: "Which war was Captain America frozen in?", answers: ["World War 1", "World War 2", "Cold War", "Civil War"], correct: 1)

let marvelQ2 = Questions.init(questVal: "The vampire hunter, Blade, is...", answers: ["Mutant", "Vampire", "Human", "Half-Vampire"], correct: 3)

let scienceQ1 = Questions.init(questVal: "What is the first element of the periodic table?", answers: ["Einsteinium", "Calcium", "Oxygen", "Hydrogen"], correct: 3)

let scienceQ2 = Questions.init(questVal: "The Sun is a...", answers: ["Planet", "Star", "Meteor", "Jupiter"], correct: 0)

let math = Categories.init(nameVal: "Math", descriptionVal: "Quizzes you on simple calculus questions", iconsVal: "math", questVals: [mathQ1, mathQ2])

let science = Categories.init(nameVal: "Science", descriptionVal: "Do you know your science?", iconsVal: "science", questVals: [scienceQ1, scienceQ2])

let marvel = Categories.init(nameVal: "Marvel Superheroes", descriptionVal: "Trivia for fans of Marvel", iconsVal: "marvel", questVals: [marvelQ1, marvelQ2])

var database = [math, science, marvel]
