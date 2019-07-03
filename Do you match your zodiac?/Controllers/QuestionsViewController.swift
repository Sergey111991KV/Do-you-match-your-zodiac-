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
    @IBOutlet var rangeLabels: [UILabel]!
    @IBOutlet weak var rangrSlider: UISlider!
    
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var buttonsSingle: [UIButton]!
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var labelMultiple: [UILabel]!
    
    
    
    
    @IBOutlet weak var imageStackView: UIStackView!
    @IBOutlet var collectionQuestionsImage: [UIImageView]!
    
    
    func  updateGroup(){
        
        if questionsIndex < 5{
          var answersChosen = [Answer]()
        }else{
            if questionsIndex
        }
    }
    
    func updateQuestions(){
        let answer = answersChosen
        
    }
    
    
    var answersChosen = [Question, QuestionFirst]
    var questionIndex = 0
    var questions = [Any]()
    
    
    var questionsGroup: [Question]!
    var questionsFirst: [QuestionFirst]!
    var questionsSecond: [QuestionSecond]!
    var questionsThird: [QuestionThird]!
    
    var currentQuestion: Question {
        return questions[questionIndex]
    }
    
    var currentAnswers: [Answer] {
        return currentQuestion.answers
    }
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = Question.all
        updateUI()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateZodiacImage(image: collectionQuestionsImage)
        updateUI()
        questions = Question.group
        questionsFirst = QuestionFirst.type
        questionsSecond = QuestionSecond.type
        questionsThird = QuestionThird.type
        
    }
    
    func updateUI(){
        
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangeStackView.isHidden = true
        imageStackView.isHidden = true
        
        let progressGroup = Float(questionsGroupIndex) / Float(questions.count)
        let progressType = Float(questionsGroupIndex) / Float(questions.count)
        
        
        
    
    
    navigationItem.title = "Вопрос № \(questionsGroupIndex + 1) из \(questions.count)"
        questionLabel.text = currentGroupQuestion.text
        progressView.setProgress(progressGroup, animated: true)
    
    
        switch currentGroupQuestion.type {
            
        case .single:
            updateSingleStack(with: currentGroupAnswers)
            
        case .multiple:
            updateMultipleStack(with: currentGroupAnswers)
            
        case .ranged:
            updateRangedStack(with: currentGroupAnswers)
            
        case .image:
        updateRangedStack(with: currentGroupAnswers)
    }
}
    
    func updateSingleStack(with answers: [Answer]) {
        singleStackView.isHidden = false
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.text, for: [])
        }
    }
    
    
    func updateMultipleStack(with answers: [Answer]) {
        multipleStackView.isHidden = false
        for (label, answer) in zip(multiLabels, answers) {
            label.text = answer.text
        }
    }
    
    func updateRangedStack(with answers: [Answer]) {
        rangedLabels.first?.text = answers.first?.text
        rangedLabels.last?.text = answers.last?.text
        rangeStackView.isHidden = false
    }
    
    
    
    
    
    
    
    
    
    
    
    func updateZodiacImage(image: [UIImageView]){
        
        
        
        for images in collectionQuestionsImage{
            let randomIndex = Int(arc4random_uniform(UInt32(nameImage.count)))
            images.image = UIImage(named: nameImage[randomIndex])
        
            
            print (nameImage)
            print (randomIndex)
        }
    }
}
