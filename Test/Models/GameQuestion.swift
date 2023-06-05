//
//  Question.swift
//  Test
//
//  Created by Денис on 03/06/2023.
//

import Foundation

struct Question {
    let moviePicture: Picture
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                moviePicture: Picture(title: "Shawshank"),
                answers: [
                    Answer(title: "Shawshank", isRight: true),
                    Answer(title: "Beginning"),
                    Answer(title: "FightClub"),
                    Answer(title: "GodFather"),

                ]
            ),
            Question(
                moviePicture: Picture(title: "FightClub"),
                answers: [
                    Answer(title: "Shawshank"),
                    Answer(title: "Beginning"),
                    Answer(title: "FightClub", isRight: true),
                    Answer(title: "GodFather"),
                ]
            ),
            Question(
                moviePicture: Picture(title: "Beginning"),
                answers: [
                    Answer(title: "Shawshank"),
                    Answer(title: "Beginning", isRight: true),
                    Answer(title: "FightClub"),
                    Answer(title: "GodFather"),
                ]
            ),
            Question(
                moviePicture: Picture(title: "GodFather"),
                answers: [
                    Answer(title: "Shawshank"),
                    Answer(title: "Beginning"),
                    Answer(title: "FightClub"),
                    Answer(title: "GodFather", isRight: true),
                ]
            )
            
        ]
    }
}

struct Picture {
    let title: String
}


struct Answer {
    let title: String
    var isRight = false
}

struct Game {
    let movieNames: [String]
    let rules: String
    
    static func getGame() -> Game {
        Game(
            movieNames: DataStore.shared.movieNames,
            rules: DataStore.shared.rules
        )
    }
}




