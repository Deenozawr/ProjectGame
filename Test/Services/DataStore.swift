//
//  DataStore.swift
//  Test
//
//  Created by Денис on 05/06/2023.
//

class DataStore {
  static let shared = DataStore()
    
    let movieNames = ["Shawshank", "Beginning", "FightClub", "GodFather"]
    let rules =
        "Механика игры проста. Сначала нужно выбрать режим игры (без ошибок, с ограничением количества ошибок, с ограничением времени на прохождение). Потом, увидев кадр, выбрать из четырех вариантов ответа правильный. Можно пользоваться подсказками: 50/50 или один раз пропустить вопрос."
    
    
    private init() { }
}
