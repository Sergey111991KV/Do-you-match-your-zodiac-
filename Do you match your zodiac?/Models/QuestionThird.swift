//
//  QuestionThird.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 03/07/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

struct  QuestionThird {
    var text: String
    var type: responceType
    var answerGroup: [AnswerType]
    
    static var type: [QuestionThird] {
        return [
            QuestionThird(text: "Вопрос 1 Группа 3", type: .single, answerGroup: [
                AnswerType(text: "Бал  Sagittarius", type: .Sagittarius),
                AnswerType(text: "Бал Scorpion", type: .Scorpion),
                AnswerType(text: "Бал Taurus", type: .Taurus),
                AnswerType(text: "Бал Virgo", type: .Virgo)
                ]),
            
            QuestionThird(text: "Вопрос 2 Группа 3", type: .multipe, answerGroup: [
                AnswerType(text: "Бал  Sagittarius", type: .Sagittarius),
                AnswerType(text: "Бал Scorpion", type: .Scorpion),
                AnswerType(text: "Бал Taurus", type: .Taurus),
                AnswerType(text: "Бал Virgo", type: .Virgo)
                ]),
            QuestionThird(text: "Вопрос 3 группа 3", type: .ranged, answerGroup: [
                AnswerType(text: "Бал  Sagittarius", type: .Sagittarius),
                AnswerType(text: "Бал Scorpion", type: .Scorpion),
                AnswerType(text: "Бал Taurus", type: .Taurus),
                AnswerType(text: "Бал Virgo", type: .Virgo)
                ]),
            QuestionThird(text: "Вопрос 4 Группа 4", type: .image, answerGroup: [
                AnswerType(text: "Бал  Sagittarius", type: .Sagittarius),
                AnswerType(text: "Бал Scorpion", type: .Scorpion),
                AnswerType(text: "Бал Taurus", type: .Taurus),
                AnswerType(text: "Бал Virgo", type: .Virgo)
                ])
        ]
    }
    
}
