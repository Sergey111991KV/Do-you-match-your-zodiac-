//
//  ResultViewController.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 29/06/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var resultTitle: UILabel!
    
    @IBOutlet weak var resultDefinition: UILabel!
    
    
     var responses: [Answer]!
     var grup: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
       print(responses)
        print(grup)
       calculatAnswer()
    }
    

    func calculatAnswer (){

        
        
        switch grup {
        case 1:
            let zodiacType = responses.map {$0.group1}
            var zodiacCount = [Group1: Int]()
            zodiacType.forEach {zodiacType in
                zodiacCount[zodiacType] = (zodiacCount[zodiacType] ?? 0) + 1}
            let sortedCount = zodiacCount.sorted { $0.value > $1.value }
            let zodiacGrup = sortedCount.first!.key
            resultImage.image = UIImage(named: zodiacGrup.rawValue)
            resultTitle.text = zodiacGrup.rawValue
            resultDefinition.text = zodiacGrup.definition
            
        case 2:
            
            let zodiacType = responses.map {$0.group2}
            var zodiacCount = [Group2: Int]()
            zodiacType.forEach {zodiacType in
                zodiacCount[zodiacType] = (zodiacCount[zodiacType] ?? 0) + 1}
            let sortedCount = zodiacCount.sorted { $0.value > $1.value }
            let zodiacGrup = sortedCount.first!.key
            resultImage.image = UIImage(named: zodiacGrup.rawValue)
            resultTitle.text = zodiacGrup.rawValue
            resultDefinition.text = zodiacGrup.definition
        
        case 3:
            
            let zodiacType = responses.map {$0.group3}
            var zodiacCount = [Group3: Int]()
            zodiacType.forEach {zodiacType in
                zodiacCount[zodiacType] = (zodiacCount[zodiacType] ?? 0) + 1}
            let sortedCount = zodiacCount.sorted { $0.value > $1.value }
            let zodiacGrup = sortedCount.first!.key
            resultImage.image = UIImage(named: zodiacGrup.rawValue)
            resultTitle.text = zodiacGrup.rawValue
            resultDefinition.text = zodiacGrup.definition
            
        default:
            return
        }

        
       
        }
}
