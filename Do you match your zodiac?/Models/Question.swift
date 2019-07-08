//
//  Question.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 06/07/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//
//let nameImageForStackView = [ "просточтото", "группа1", "изумруд", "сердце", "амметист", "арагонит", "бирюза", "гранат", "дудл", "конус", "лал", "рубин", "сапфир", "хризолит", "шпинель"]

struct  Question {
    var text: String
    var type: ResponseType
    var relationshipTies: [relationshipTies : [relationshipTies]]
    var answer: [Answer]
    
    static var all: [Question] { return [
        //MARK 1
        Question(text: "Общий вопрсос 1", type: .image, relationshipTies: [.common : [.groupFirst, .groupSecond]], answer:[
            Answer(text: "Группа 1", relationshipTies: .groupFirst),
            Answer(text: "Группа 2", relationshipTies: .groupSecond),
            Answer(text: "Группа 1", relationshipTies: .groupFirst),
            Answer(text: "Группа 2", relationshipTies: .groupSecond)
            ]),
        Question(text: "Общий вопрсос 2", type: .multiple, relationshipTies: [.common : [.groupFirst, .groupSecond]], answer:[
            Answer(text: "Группа 1", relationshipTies: .groupFirst),
            Answer(text: "Группа 2", relationshipTies: .groupSecond),
            Answer(text: "Группа 1", relationshipTies: .groupFirst),
            Answer(text: "Группа 2", relationshipTies: .groupSecond)
            ]),
        Question(text: "Общий вопрсос 3", type: .ranged, relationshipTies: [.common : [.groupFirst, .groupSecond]], answer:[
            Answer(text: "Группа 1", relationshipTies: .groupFirst),
            Answer(text: "Группа 2", relationshipTies: .groupSecond),
            Answer(text: "Группа 1", relationshipTies: .groupFirst),
            Answer(text: "Группа 2", relationshipTies: .groupSecond)
            ]),
        Question(text: "Общий вопрсос 4", type: .single, relationshipTies: [.common : [.groupFirst, .groupSecond]], answer:[
            Answer(text: "Группа 1", relationshipTies: .groupFirst),
            Answer(text: "Группа 2", relationshipTies: .groupSecond),
            Answer(text: "Группа 1", relationshipTies: .groupFirst),
            Answer(text: "Группа 2", relationshipTies: .groupSecond)
            ]),
        
        //MARK 2
        Question(text: "Группа 1", type: .image, relationshipTies: [.groupFirst: [.Air, .Earth]], answer:[
            Answer(text: "Air", relationshipTies: .Air),
            Answer(text: "Air", relationshipTies: .Air),
            Answer(text: "Earth", relationshipTies: .Earth),
            Answer(text: "Earth", relationshipTies: .Earth)
            ]),
        Question(text: "Группа 1", type: .ranged, relationshipTies: [.groupFirst: [.Air, .Earth]], answer:[
            Answer(text: "Air", relationshipTies: .Air),
            Answer(text: "Air", relationshipTies: .Air),
            Answer(text: "Earth", relationshipTies: .Earth),
            Answer(text: "Earth", relationshipTies: .Earth)
            ]),
        Question(text: "Группа 1", type: .multiple, relationshipTies: [.groupFirst: [.Air, .Earth]], answer:[
            Answer(text: "Air", relationshipTies: .Air),
            Answer(text: "Air", relationshipTies: .Air),
            Answer(text: "Earth", relationshipTies: .Earth),
            Answer(text: "Earth", relationshipTies: .Earth)
            ]),
        Question(text: "Группа 1", type: .single, relationshipTies: [.groupFirst: [.Air, .Earth]], answer:[
            Answer(text: "Air", relationshipTies: .Air),
            Answer(text: "Air", relationshipTies: .Air),
            Answer(text: "Earth", relationshipTies: .Earth),
            Answer(text: "Earth", relationshipTies: .Earth)
            ]),
        
        Question(text: "Группа 2", type: .image, relationshipTies: [.groupSecond: [.Water, .Fire]], answer:[
            Answer(text: "Water", relationshipTies: .Water),
            Answer(text: "Water", relationshipTies: .Water),
            Answer(text: "Fire", relationshipTies: .Fire),
            Answer(text: "Fire", relationshipTies: .Fire)
            ]),
        Question(text: "Группа 2", type: .single, relationshipTies: [.groupSecond: [.Water, .Fire]], answer:[
            Answer(text: "Water", relationshipTies: .Water),
            Answer(text: "Water", relationshipTies: .Water),
            Answer(text: "Fire", relationshipTies: .Fire),
            Answer(text: "Fire", relationshipTies: .Fire)
            ]),
        Question(text: "Группа 2", type: .multiple, relationshipTies: [.groupSecond: [.Water, .Fire]], answer:[
            Answer(text: "Water", relationshipTies: .Water),
            Answer(text: "Water", relationshipTies: .Water),
            Answer(text: "Fire", relationshipTies: .Fire),
            Answer(text: "Fire", relationshipTies: .Fire)
            ]),
        Question(text: "Группа 2", type: .ranged, relationshipTies: [.groupSecond: [.Water, .Fire]], answer:[
            Answer(text: "Water", relationshipTies: .Water),
            Answer(text: "Water", relationshipTies: .Water),
            Answer(text: "Fire", relationshipTies: .Fire),
            Answer(text: "Fire", relationshipTies: .Fire)
            ]),
        
        
        // MARK 3
        Question(text: "Air", type: .image, relationshipTies: [.Air: [.Aquarius, .Aries, .Virgo]], answer:[
            Answer(text: "Aquarius", relationshipTies: .Aquarius),
            Answer(text: "Virgo", relationshipTies: .Virgo),
            Answer(text: "Aries", relationshipTies: .Aries),
            Answer(text: "non", relationshipTies: .Virgo)
            ]),
        Question(text: "Air", type: .multiple, relationshipTies: [.Air: [.Aquarius, .Aries, .Virgo]], answer:[
            Answer(text: "Aquarius", relationshipTies: .Aquarius),
            Answer(text: "Virgo", relationshipTies: .Virgo),
            Answer(text: "Aries", relationshipTies: .Aries),
            Answer(text: "non", relationshipTies: .non)
            ]),
        Question(text: "Air", type: .single, relationshipTies: [.Air: [.Aquarius, .Aries, .Virgo]], answer:[
            Answer(text: "Aquarius", relationshipTies: .Aquarius),
            Answer(text: "Virgo", relationshipTies: .Virgo),
            Answer(text: "Aries", relationshipTies: .Aries),
            Answer(text: "non", relationshipTies: .non)
            ]),
        Question(text: "Air", type: .ranged, relationshipTies: [.Air: [.Aquarius, .Aries, .Virgo]], answer:[
            Answer(text: "Aquarius", relationshipTies: .Aquarius),
            Answer(text: "Virgo", relationshipTies: .Virgo),
            Answer(text: "Aries", relationshipTies: .Aries),
            Answer(text: "non", relationshipTies: .non)
            ]),
        
        Question(text: "Earth", type: .image, relationshipTies: [.Earth: [.Cancer, .Capricorn, .Scorpion]], answer:[
            Answer(text: "non", relationshipTies: .non),
            Answer(text: "Cancer", relationshipTies: .Cancer),
            Answer(text: "Scorpion", relationshipTies: .Scorpion),
            Answer(text: "Capricorn", relationshipTies: .Capricorn)
            ]),
        Question(text: "Earth", type: .multiple, relationshipTies: [.Earth: [.Cancer, .Capricorn, .Scorpion]], answer:[
            Answer(text: "non", relationshipTies: .non),
            Answer(text: "Группа 2", relationshipTies: .Cancer),
            Answer(text: "Scorpion", relationshipTies: .Scorpion),
            Answer(text: "Capricorn", relationshipTies: .Capricorn)
            ]),
        Question(text: "Earth", type: .single, relationshipTies: [.Earth: [.Cancer, .Capricorn, .Scorpion]], answer:[
            Answer(text: "non", relationshipTies: .non),
            Answer(text: "Группа 2", relationshipTies: .Cancer),
            Answer(text: "Scorpion", relationshipTies: .Scorpion),
            Answer(text: "Capricorn", relationshipTies: .Capricorn)
            ]),
        Question(text: "Earth", type: .ranged, relationshipTies: [.Earth: [.Cancer, .Capricorn, .Scorpion]], answer:[
            Answer(text: "non", relationshipTies: .non),
            Answer(text: "Cancer", relationshipTies: .Cancer),
            Answer(text: "Scorpion", relationshipTies: .Scorpion),
            Answer(text: "Capricorn", relationshipTies: .Capricorn)
            ]),
        
        
        Question(text: "Fire", type: .image, relationshipTies: [.Fire: [.Gemini, .Leo, .Taurus]], answer:[
            Answer(text: "Gemini", relationshipTies: .Gemini),
            Answer(text: "Taurus", relationshipTies: .Taurus),
            Answer(text: "non", relationshipTies: .non),
            Answer(text: "Leo", relationshipTies: .Leo)
            ]),
        Question(text: "Fire", type: .image, relationshipTies: [.Fire: [.Gemini, .Leo, .Taurus]], answer:[
            Answer(text: "Gemini", relationshipTies: .Gemini),
            Answer(text: "Taurus", relationshipTies: .Taurus),
            Answer(text: "non", relationshipTies: .non),
            Answer(text: "Leo", relationshipTies: .Leo)
            ]),
        Question(text: "Fire", type: .image, relationshipTies: [.Fire: [.Gemini, .Leo, .Taurus]], answer:[
            Answer(text: "Gemini", relationshipTies: .Gemini),
            Answer(text: "Taurus", relationshipTies: .Taurus),
            Answer(text: "non", relationshipTies: .non),
            Answer(text: "Leo", relationshipTies: .Leo)
            ]),
        Question(text: "Fire", type: .image, relationshipTies: [.Fire: [.Gemini, .Leo, .Taurus]], answer:[
            Answer(text: "Gemini", relationshipTies: .Gemini),
            Answer(text: "non", relationshipTies: .non),
            Answer(text: "Taurus", relationshipTies: .Taurus),
            Answer(text: "Leo", relationshipTies: .Leo)
            ]),
        Question(text: "Water", type: .image, relationshipTies: [.Water: [.Sagittarius, .Pisces, .Libra]], answer:[
            Answer(text: "Sagittarius", relationshipTies: .Sagittarius),
            Answer(text: "Pisces", relationshipTies: .Pisces),
            Answer(text: "Libra", relationshipTies: .Libra),
            Answer(text: "non", relationshipTies: .non)
            ]),
        
        
        Question(text: "Water", type: .image, relationshipTies: [.Water: [.Sagittarius, .Pisces, .Libra ]], answer:[
            Answer(text: "Sagittarius", relationshipTies: .Sagittarius),
            Answer(text: "Pisces", relationshipTies: .Pisces),
            Answer(text: "Libra", relationshipTies: .Libra),
            Answer(text: "non", relationshipTies: .non)
            ]),
        Question(text: "Water", type: .image, relationshipTies: [.Water: [.Sagittarius, .Pisces, .Libra ]], answer:[
            Answer(text: "Sagittarius", relationshipTies: .Sagittarius),
            Answer(text: "Pisces", relationshipTies: .Pisces),
            Answer(text: "Libra", relationshipTies: .Libra),
            Answer(text: "non", relationshipTies: .non)
            ]),
        Question(text: "Water", type: .image, relationshipTies: [.Water: [.Sagittarius,  .Pisces,  .Libra ]], answer:[
            Answer(text: "Sagittarius", relationshipTies: .Sagittarius),
            Answer(text: "Pisces", relationshipTies: .Pisces),
            Answer(text: "Libra", relationshipTies: .Libra),
            Answer(text: "non", relationshipTies: .non)
            ]),
  

        ]

    }
        
    
        
        
        
}
