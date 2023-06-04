//
//  Question.swift
//  Test
//
//  Created by Денис on 03/06/2023.
//

import Foundation

struct Question {
    let movieName: [AnswerOption]
    let actorPhoto: [String]
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(movieName: [
                AnswerOption(option: "Shawshank"),
                AnswerOption(option: "Beginning"),
                AnswerOption(option: "FightClub"),
                AnswerOption(option: "GodFather")
            ],
                     actorPhoto: [
                        "Shawshank",
                        "Beginning",
                        "FightClub",
                        "GodFather"
                     ],
                     answers: [
                        Answer(title: "Shawshank"),
                        Answer(title: "Beginning"),
                        Answer(title: "FightClub"),
                        Answer(title: "GodFather")
                     ]
                    ),
            Question(movieName: [
                AnswerOption(option: "Shawshank"),
                AnswerOption(option: "Beginning"),
                AnswerOption(option: "FightClub"),
                AnswerOption(option: "GodFather")
            ],
                     actorPhoto: [
                        "Shawshank",
                        "Beginning",
                        "FightClub",
                        "GodFather"
                     ],
                     answers: [
                        Answer(title: "Shawshank"),
                        Answer(title: "Beginning"),
                        Answer(title: "FightClub"),
                        Answer(title: "GodFather")
                     ]
                    ),
            Question(movieName: [
                AnswerOption(option: "Shawshank"),
                AnswerOption(option: "Beginning"),
                AnswerOption(option: "FightClub"),
                AnswerOption(option: "GodFather")
            ],
                     actorPhoto: [
                        "Shawshank",
                        "Beginning",
                        "FightClub",
                        "GodFather"
                     ],
                     answers: [
                        Answer(title: "Shawshank"),
                        Answer(title: "Beginning"),
                        Answer(title: "FightClub"),
                        Answer(title: "GodFather")
                     ]
                    )
            
        ]
    }
}

struct AnswerOption {
    let option: String
}


struct Answer {
    let title: String
    
}

    
    

