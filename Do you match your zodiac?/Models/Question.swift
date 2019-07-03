//
//  Questions.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 03/07/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

struct  Question {
    var text: String
    var type: responceType
    var answerGroup: [AnswerGroup]
    
    

        
        
        
        
        
    }
    static var group: [Question] {
        return [
            Question(text: "Вопрос Группа А", type: .single, answerGroup: [
                AnswerGroup(text: "Бал группе А", type: ZodiacGrup.firstGrup),
                AnswerGroup(text: "Бал группе Б", type: ZodiacGrup.secondGroup),
                AnswerGroup(text: "Бал группе В", type: ZodiacGrup.thirdGroup),
                AnswerGroup(text: "Бал ВСЕМ", type: ZodiacGrup.all),
                
                
                Question(text: "Вопрос Группа Б", type: .multipe, answerGroup: [
                AnswerGroup(text: "Плавать", type: .firstGrup),
                AnswerGroup(text: "Спать", type: .secondGroup),
                AnswerGroup(text: "Обниматься", type: .thirdGroup),
                AnswerGroup(text: "Есть", type: .all),
                ]),
            Question(text: "Вопрос группа В", type: .ranged, answers: [
                AnswerGroup(text: "Ненавижу", type: .cat),
                AnswerGroup(text: "Немного нервничаю", type: .rabbit),
                AnswerGroup(text: "Почти не замечаю", type: .turtle),
                AnswerGroup(text: "Обожаю", type: .dog),
                ]),
        ]
    }
}
