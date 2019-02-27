//
//  Database.swift
//  iQuiz
//
//  Created by Anukriti Goyal on 2/26/19.
//  Copyright © 2019 ischoolnikki. All rights reserved.
//

import UIKit

class Categories: Decodable {
    var title: String
    var desc: String
    var icons: String?
    var questions: [Questions]
    
    init(nameVal: String, descriptionVal: String, iconsVal: String?, questVals: [Questions]) {
        icons = iconsVal
        title = nameVal
        desc = descriptionVal
        questions = questVals
    }
}

class Questions: Decodable {
    var text: String
    var answers: [String]
    var answer: String
    
    init(questVal: String, answersVal: [String], correct: String) {
        text = questVal
        answers = answersVal
        answer = correct
    }
}

let mathQ1 = Questions.init(questVal: "What is the value of π?", answersVal: ["3.1415926", "3.1421367", "3.1415729", "3.1415927"], correct: "1")

let mathQ2 = Questions.init(questVal: "What is the newest shape discovered naturally existing in nature?", answersVal: ["Crytoid", "Cellugon", "Scutoid", "Sporium"], correct: "3")

let marvelQ1 = Questions.init(questVal: "Which war was Captain America frozen in?", answersVal: ["World War 1", "World War 2", "Cold War", "Civil War"], correct: "2")

let marvelQ2 = Questions.init(questVal: "The vampire hunter, Blade, is...", answersVal: ["Mutant", "Vampire", "Human", "Half-Vampire"], correct: "4")

let scienceQ1 = Questions.init(questVal: "What is the first element of the periodic table?", answersVal: ["Einsteinium", "Calcium", "Oxygen", "Hydrogen"], correct: "4")

let scienceQ2 = Questions.init(questVal: "The Sun is a...", answersVal: ["Planet", "Star", "Meteor", "Jupiter"], correct: "2")

let math = Categories.init(nameVal: "Math", descriptionVal: "Quizzes you on simple calculus questions", iconsVal: "math", questVals: [mathQ1, mathQ2])

let science = Categories.init(nameVal: "Science", descriptionVal: "Do you know your science?", iconsVal: "science", questVals: [scienceQ1, scienceQ2])

let marvel = Categories.init(nameVal: "Marvel Superheroes", descriptionVal: "Trivia for fans of Marvel", iconsVal: "marvel", questVals: [marvelQ1, marvelQ2])

var database = [math, science, marvel]
