//
//  QuestionFirs.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 03/07/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//



struct  QuestionFirst {
    var text: String
    var type: responceType
    var answerGroup: [AnswerType]
    
    static var type: [QuestionFirst] {
        return [
            QuestionFirst(text: "Вопрос 1 Группа 1", type: .single, answerGroup: [
                AnswerType(text: "Бал  Aquarius", type: .Aquarius),
                AnswerType(text: "Бал Aries", type: .Aries),
                AnswerType(text: "Бал Cancer", type: .Cancer),
                AnswerType(text: "Бал Capricorn", type: .Capricorn)
                ]),
            
            QuestionFirst(text: "Вопрос 2 Группа 1", type: .multipe, answerGroup: [
                AnswerType(text: "Бал  Aquarius", type: .Aquarius),
                AnswerType(text: "Бал Aries", type: .Aries),
                AnswerType(text: "Бал Cancer", type: .Cancer),
                AnswerType(text: "Бал Capricorn", type: .Capricorn)
                ]),
            QuestionFirst(text: "Вопрос 3 Группа 1", type: .single, answerGroup: [
                AnswerType(text: "Бал  Aquarius", type: .Aquarius),
                AnswerType(text: "Бал Aries", type: .Aries),
                AnswerType(text: "Бал Cancer", type: .Cancer),
                AnswerType(text: "Бал Capricorn", type: .Capricorn)
                ]),
            QuestionFirst(text: "Вопрос 4 Группа 1", type: .single, answerGroup: [
                AnswerType(text: "Бал  Aquarius", type: .Aquarius),
                AnswerType(text: "Бал Aries", type: .Aries),
                AnswerType(text: "Бал Cancer", type: .Cancer),
                AnswerType(text: "Бал Capricorn", type: .Capricorn)
                ])
        ]
    }
    
}

