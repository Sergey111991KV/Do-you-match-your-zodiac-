//
//  QuestionSecond.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 03/07/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//



struct  QuestionSecond {
    var text: String
    var type: responceType
    var answerGroup: [AnswerType]
    
    static var type: [QuestionSecond] {
        return [
            QuestionSecond(text: "Вопрос 1 Группа 2", type: .single, answerGroup: [
                AnswerType(text: "Бал  Gemini", type: .Gemini),
                AnswerType(text: "Бал Leo", type: .Leo),
                AnswerType(text: "Бал Libra", type: .Libra),
                AnswerType(text: "Бал Pisces", type: .Pisces)
                ]),
            
            QuestionSecond(text: "Вопрос 2 Группа 2", type: .multipe, answerGroup: [
                AnswerType(text: "Бал  Gemini", type: .Gemini),
                AnswerType(text: "Бал Leo", type: .Leo),
                AnswerType(text: "Бал Libra", type: .Libra),
                AnswerType(text: "Бал Pisces", type: .Pisces)
                ]),
            QuestionSecond(text: "Вопрос 3 Группа 2", type: .single, answerGroup: [
                AnswerType(text: "Бал  Gemini", type: .Gemini),
                AnswerType(text: "Бал Leo", type: .Leo),
                AnswerType(text: "Бал Libra", type: .Libra),
                AnswerType(text: "Бал Pisces", type: .Pisces)
                ]),
            QuestionSecond(text: "Вопрос 4 Группа 2", type: .single, answerGroup: [
                AnswerType(text: "Бал  Gemini", type: .Gemini),
                AnswerType(text: "Бал Leo", type: .Leo),
                AnswerType(text: "Бал Libra", type: .Libra),
                AnswerType(text: "Бал Pisces", type: .Pisces)
                ])
        ]
    }
    
}
