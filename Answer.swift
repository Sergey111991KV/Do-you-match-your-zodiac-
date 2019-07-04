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
                return "Вы любите развлекаться вне дома вместе с людьми, которые вам дороги."
                
            case .Aries:
                return "Вы гуляете сами по себе.  Вам не нужна компания, вы цените свободу."
                
            case .Cancer:
                return "Вам нравится всё мягкое.  Вы здоровы и полны энергии."
                
            case .Capricorn:
                return "Мудрость важнее скорости.  Медленный и вдумчивый всегда выигрывает."
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
                return "Вы любите развлекаться вне дома вместе с людьми, которые вам дороги."
                
            case .Leo:
                return "Вы гуляете сами по себе.  Вам не нужна компания, вы цените свободу."
                
            case .Libra:
                return "Вам нравится всё мягкое.  Вы здоровы и полны энергии."
                
            case .Pisces:
                return "Мудрость важнее скорости.  Медленный и вдумчивый всегда выигрывает."
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
            return "Вы любите развлекаться вне дома вместе с людьми, которые вам дороги."
            
        case .Scorpion:
            return "Вы гуляете сами по себе.  Вам не нужна компания, вы цените свободу."
            
        case .Taurus:
            return "Вам нравится всё мягкое.  Вы здоровы и полны энергии."
            
        case .Virgo:
            return "Мудрость важнее скорости.  Медленный и вдумчивый всегда выигрывает."
            
        case .non:
            return "non"
        }
        
    }
    
}



