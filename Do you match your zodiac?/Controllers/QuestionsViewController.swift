//
//  QuestionsViewController.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 29/06/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit


//MARK: NameImagt
let nameImageForStackView = [ "просточтото", "группа1", "изумруд", "сердце", "амметист", "арагонит", "бирюза", "гранат", "дудл", "конус", "лал", "рубин", "сапфир", "хризолит", "шпинель"]


class QuestionsViewController: UIViewController {

    // MARK: Outlets
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
    
    
    // MARK: - Properties
    
    
     // MARK: - UIViewController Methods
        override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI()
     
            
            
    }
    var quest = Question(text: "ASf", type: .image, responseGroup: [.common : .Air], answer: [Answer(text: "ASDf").createAnswerGroup1(questions: Question)])

     // MARK: - Custom Methods
    func updateUI(){
        
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangeStackView.isHidden = true
        imageStackView.isHidden = true
        
//        let progress = Float(currentTitle - 1) / 8
        //здесь нужно взять меняющуюся величину но времени нет
       
  //      navigationItem.title = "Вопрос № \(currentTitle) из \(questions.count * 2)"
//        questionLabel.text = currentQuestion.text
//       progressView.setProgress(progress, animated: true)
//
//        switch currentQuestion.type {
//
//        case .single:
//            updateSingleStack(with: currentAnswers)
//
//        case .multipe:
//            updateMultipleStack(with: currentAnswers)
//
//        case .ranged:
//            updateRangedStack(with: currentAnswers)
//
//        case .image:
//            updateImageStack(with: currentAnswers)
//
//        }
  
}
   
    
    
    
//
//    func updateSingleStack(with answers: [aaa]) {
//        singleStackView.isHidden = false
//        for (button, answer) in zip(buttonsSingle, answers) {
//            button.setTitle(answer.text, for: [])
//        }
//    }
//    func updateMultipleStack(with answers: [aaa]) {
//        multipleStackView.isHidden = false
//        for (label, answer) in zip(labelMultiple, answers) {
//            label.text = answer.text
//        }
//    }
//    func updateRangedStack(with answers: [aaa]) {
//        rangeLabels.first?.text = answers.first?.text
//        rangeLabels.last?.text = answers.last?.text
//        rangeStackView.isHidden = false
//    }
//    func updateImageStack(with answers: [aaa]) {
//        imageStackView.isHidden = false
//        for (view, answer) in zip(collectionQuestionsImage, answers){
//            view.image = UIImage(named: answer.text)
//        }
//    }

    
    
    
//
//    func nextQuestion() {
//        currentTitle += 1
//        questionsCurrentIndex += 1
//        let questionsOnBlock = questions[questionsGroupIndex]
//        if questionsCurrentIndex < questionsOnBlock.count {
//            updateUI()
//        }else{
//        if questionsCurrentIndex == questionsOnBlock.count{
//            if questionsGroupIndex == 0{
//                calculatAnswer()
//                updateUI()
//            }else{
//                performSegue(withIdentifier: "ResultSegue", sender: nil)
//                    }
//
//                }
//
//        }
//    }
    
  
    
    
      // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ResultSegue" else { return }
        let destination = segue.destination as! ResultViewController
     
       
    }
    

     // MARK: - Actions
    @IBAction func singleButtonPressed(_ sender: UIButton) {
        guard let answerIndex = buttonsSingle.firstIndex(of: sender) else { return }
       
//        nextQuestion()
    }
    
    
    @IBAction func multipleButtonPressed(_ sender: UIButton) {
        for (index, view) in multipleStackView.arrangedSubviews.enumerated() {
            guard let stackView = view as? UIStackView else { continue }
            guard let switchView = stackView.arrangedSubviews.last as? UISwitch else { continue }
            if switchView.isOn {
               
            }
        }
//        nextQuestion()
        
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
//        let numberOfSteps = Float(currentAnswers.count - 1)
//        let step = 1 / numberOfSteps
//        let index = round(rangrSlider.value * numberOfSteps)
//        sender.value = step * index
//
    }
    
    
    
    @IBAction func rangedButtonPressed(_ sender: UIButton) {
//        let index = Int(round(rangrSlider.value * Float(currentAnswers.count - 1)))
//        let answer = currentAnswers[index]
//        createResponderAnswer(_answer: answer)
//        nextQuestion()
        }
    
    

    
    @IBAction func first(_ sender: UITapGestureRecognizer) {
//        let answer = currentAnswers[0]
//        createResponderAnswer(_answer: answer)
//        nextQuestion()
        
    }
    
    @IBAction func second(_ sender: UITapGestureRecognizer) {
//        let answer = currentAnswers[1]
//        createResponderAnswer(_answer: answer)
//        nextQuestion()
    }
    
    @IBAction func third(_ sender: UITapGestureRecognizer) {
//        let answer = currentAnswers[2]
//       createResponderAnswer(_answer: answer)
//        nextQuestion()
    }
    
    @IBAction func `for`(_ sender: UITapGestureRecognizer) {
//        let answer = currentAnswers[3]
//        createResponderAnswer(_answer: answer)
//        nextQuestion()
    }
  
    
    

}


