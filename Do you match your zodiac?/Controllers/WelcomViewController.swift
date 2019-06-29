//
//  WelcomViewController.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 29/06/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class WelcomViewController: UIViewController {
    
    var nameImage = ["Aquarius", "Aries", "Cancer", "Capricorn", "Gemini", "Leo", "Libra", "Pisces", "Sagittarius", "Scorpion", "Taurus", "Virgo"]
    
    
    @IBOutlet var zodiacImage: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateZodiacImage(image: zodiacImage)
       
    }
    

    func updateZodiacImage(image: [UIImageView]){
        
        let randomIndex = Int(arc4random_uniform(UInt32(nameImage.count)))
        for images in zodiacImage{
            images.image = UIImage(named: nameImage[randomIndex])
            nameImage.remove(at: randomIndex)
            
        }
    }

}
