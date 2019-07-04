//
//  AnswerSecond.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 03/07/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

struct Answer: Hashable {
    var text: String
    var common: Common
    var group1: Group1
    var group2: Group2
    var group3: Group3
}
    enum Common: String {
        case group1
        case group2
        case group3
        case all
        case non
    }

    enum Group1: String {
        case Aquarius = "Aquarius"
        case Aries = "Aries"
        case Cancer = "Cancer"
        case Capricorn = "Capricorn"
        case non
        
        var definition: String {
            switch self {
                
            case .Aquarius:
                return "Люди, рожденные под знаком Водолея, отличаются особенной чувствительностью и ранимостью."
                
            case .Aries:
                return "Энергия и неутомимость Овнов стали легендарными равно как и их упрямство"
                
            case .Cancer:
                return "Люди, родившиеся под этим знаком, отличаются особенной чувствительностью"
                
            case .Capricorn:
                return "Козероги по большей части эгоисты, при этом они не считают себя лучше других"
            case .non:
                return "non"
            }
        }
    }

    enum Group2: String {
        case Gemini  = "Gemini"
        case Leo = "Leo"
        case Libra = "Libra"
        case Pisces = "Pisces"
        case non
        
        var definition: String {
            switch self {
                
            case .Gemini:
                return "Близнецов отличает от представителей других знаков особая двойственность"
                
            case .Leo:
                return "Львы отличаются ленивой силой и огромной амбициозностью."
                
            case .Libra:
                return "Люди, родившиеся под этим знаком, скромны, обаятельны и дружелюбны."
                
            case .Pisces:
                return "Рыбы мало ценят материальные блага и не отличаются большими запросами"
            case .non:
                return "non"
            }
        }
        
    }


    enum Group3: String {
        case Sagittarius = "Sagittarius"
        case Scorpion = "Scorpion"
        case Taurus = "Taurus"
        case Virgo = "Virgo"
        case non


    var definition: String {
        switch self {
            
        case .Sagittarius:
            return "Стрельцы на протяжении всей жизни отличаются активностью как ума, так и тела"
            
        case .Scorpion:
            return "Вы можете быть уверены в одном - с ним будет интересно, но почти всегда опасно. "
            
        case .Taurus:
            return "Тельцы обладают благородным и независимым характером."
            
        case .Virgo:
            return "В большинстве своем Девы умны, причем наделены как логикой, так и интуицией"
            
        case .non:
            return "non"
        }
        
    }
    
}



