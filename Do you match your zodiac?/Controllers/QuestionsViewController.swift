//
//  QuestionsViewController.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 29/06/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var rangeStackView: UIStackView!
    
    @IBOutlet weak var singleStackView: UIStackView!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    var currentQuestions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
      
    }
    
    func updateUI(){
        
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangeStackView.isHidden = true
    }
    
    @IBAction func resultsButtonOressed(_ sender: UIBarButtonItem) {
    
        updateUI()
    
        switch currentQuestions {
        case 0:
            singleStackView.isHidden = false
        case 1:
            multipleStackView.isHidden = false
        case 2:
            rangeStackView.isHidden = false
        default:
            performSegue(withIdentifier: "ResultSegue", sender: nil)
        }
        
        
        currentQuestions += 1
    }
    
   

}
