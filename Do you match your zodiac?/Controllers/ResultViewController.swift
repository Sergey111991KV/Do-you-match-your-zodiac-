//
//  ResultViewController.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 29/06/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

     var responses: [Answer]!
     var grup: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
       
//        updateUI()
    }
    

    func calculatAnswer (){
//        
//        var calculateResponse = responses.remove(at: 0)
//        
//        switch grup {
//        case 1:
//            <#code#>
//        case 2:
//        
//        case 3:
//            
//            
//            
//        default:
//            <#code#>
//        }
//
//        let zodiacType = responses.map {$0.common}
//        var zodiacCount = [Common: Int]()
//        zodiacType.forEach {zodiacType in
//            zodiacCount[zodiacType] = (zodiacCount[zodiacType] ?? 0) + 1}
//        let sortedCount = zodiacCount.sorted { $0.value > $1.value }
//        let zodiacGrup = sortedCount.first!.key
//        switch zodiacGrup {
//        case .group1:
//            questionsGroupIndex = 1
//            questionsCurrentIndex = 0
//        case .group2:
//            questionsGroupIndex = 2
//            questionsCurrentIndex = 0
//        case .group3:
//            questionsGroupIndex = 3
//            questionsCurrentIndex = 0
//        case .all:
//            questionsGroupIndex = 3 //  здесь можно сделать дополнительные вопросы, но опять же
//            questionsCurrentIndex = 0
//        default:
//            questionsGroupIndex = 3 //  здесь можно сделать дополнительные вопросы, но опять же
//            questionsCurrentIndex = 0
//
        }
}
