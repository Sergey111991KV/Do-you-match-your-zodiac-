//
//  WelcomViewController.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 29/06/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

var nameImage = ["Aquarius", "Aries", "Cancer", "Capricorn", "Gemini", "Leo", "Libra", "Pisces", "Sagittarius", "Scorpion", "Taurus", "Virgo"]

class WelcomViewController: UIViewController {
    
    var nameImageWelcom = nameImage
   
    
    @IBOutlet var zodiacImage: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateZodiacImage(image: zodiacImage)
      
        
    }
    
    @IBAction  func unwind(_ segue: UIStoryboardSegue){
        
    }
    
    @IBAction func beginActionBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "QuestionsSegue", sender: nil)
    }
    
    
    func updateZodiacImage(image: [UIImageView]){
        
       
      
        for images in zodiacImage{
            let randomIndex = Int(arc4random_uniform(UInt32(nameImageWelcom.count)))
            images.image = UIImage(named: nameImageWelcom[randomIndex])
            nameImageWelcom.remove(at: randomIndex)
            
            print (nameImageWelcom)
            print (randomIndex)
                        }
                    }
    

}
//был баг в коде - по поводу массивов и рандомных значений, из-за этого выкидывало
