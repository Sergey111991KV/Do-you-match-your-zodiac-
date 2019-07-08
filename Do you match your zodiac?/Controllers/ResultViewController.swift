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
    
    
    var responses: relationshipTies!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
       resultImage.image = UIImage(named: responses.rawValue)
        resultTitle.text = responses.rawValue
        print(responses!)
    }
    


}
