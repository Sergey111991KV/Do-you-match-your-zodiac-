//
//  QuestionsViewController.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 29/06/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit



let nameImageForStackView = [ "просточтото", "группа1", "изумруд", "сердце", "амметист", "арагонит", "бирюза", "гранат", "дудл", "конус", "лал", "рубин", "сапфир", "хризолит", "шпинель"]


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
    
    
    
    var responseAnswer = [Answer]()
    var currentTitle = 1
    var answersChosen = [Answer]()
    var questionsGroupIndex = 0
    var questions: [[Question]]!
    var questionsCurrentIndex = 0
    
    var currentQuestion: Question {
        let v = questions[questionsGroupIndex]
        let question = v[questionsCurrentIndex]
        return question
        
    }
    
    var currentAnswers: [Answer] {
        return currentQuestion.answer
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = Question.all
    

        
        
        
       
        updateUI()
    }
    
    
    
    
    

    
 
    
    
    
    func updateUI(){
        
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangeStackView.isHidden = true
        imageStackView.isHidden = true
        
        let progress = Float(currentTitle - 1) / 8
        //здесь нужно взять меняющуюся величину но времени нет
       
        navigationItem.title = "Вопрос № \(currentTitle) из \(questions.count * 2)"
        questionLabel.text = currentQuestion.text
       progressView.setProgress(progress, animated: true)
    
        switch currentQuestion.type {
            
        case .single:
            updateSingleStack(with: currentAnswers)
            
        case .multipe:
            updateMultipleStack(with: currentAnswers)
            
        case .ranged:
            updateRangedStack(with: currentAnswers)
            
        case .image:
            updateImageStack(with: currentAnswers)
        
        }
        print(questionsGroupIndex)
        print(questionsCurrentIndex)
}
   
    
    
    
    
    func updateSingleStack(with answers: [Answer]) {
        singleStackView.isHidden = false
        for (button, answer) in zip(buttonsSingle, answers) {
            button.setTitle(answer.text, for: [])
        }
    }
    func updateMultipleStack(with answers: [Answer]) {
        multipleStackView.isHidden = false
        for (label, answer) in zip(labelMultiple, answers) {
            label.text = answer.text
        }
    }
    func updateRangedStack(with answers: [Answer]) {
        rangeLabels.first?.text = answers.first?.text
        rangeLabels.last?.text = answers.last?.text
        rangeStackView.isHidden = false
    }
    func updateImageStack(with answers: [Answer]) {
        imageStackView.isHidden = false
        for (view, answer) in zip(collectionQuestionsImage, answers){
            view.image = UIImage(named: answer.text)
        }
    }

    
    
    
    
    func nextQuestion() {
        currentTitle += 1
        questionsCurrentIndex += 1
        let questionsOnBlock = questions[questionsGroupIndex]
        if questionsCurrentIndex < questionsOnBlock.count {
            updateUI()
        }else{
        if questionsCurrentIndex == questionsOnBlock.count{
            if questionsGroupIndex == 0{
                calculatAnswer()
                updateUI()
            }else{
                performSegue(withIdentifier: "ResultSegue", sender: nil)
                    }
    
                }
        
        }
    }
    
    func calculatAnswer (){
        let zodiacType = answersChosen.map {$0.common}
        var zodiacCount = [Common: Int]()
        zodiacType.forEach {zodiacType in
        zodiacCount[zodiacType] = (zodiacCount[zodiacType] ?? 0) + 1}
        let sortedCount = zodiacCount.sorted { $0.value > $1.value }
        let zodiacGrup = sortedCount.first!.key
        switch zodiacGrup {
        case .group1:
            questionsGroupIndex = 1
            questionsCurrentIndex = 0
        case .group2:
            questionsGroupIndex = 2
            questionsCurrentIndex = 0
        case .group3:
            questionsGroupIndex = 3
            questionsCurrentIndex = 0
        case .all:
            questionsGroupIndex = 3 //  здесь можно сделать дополнительные вопросы, но опять же
            questionsCurrentIndex = 0
        default:
            questionsGroupIndex = 3 //  здесь можно сделать дополнительные вопросы, но опять же
            questionsCurrentIndex = 0
            
        }
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ResultSegue" else { return }
        let destination = segue.destination as! ResultViewController
        destination.responses = answersChosen
        destination.grup = questionsGroupIndex
        
    }
    

    
    

    
    
    
    
    @IBAction func singleButtonPressed(_ sender: UIButton) {
        guard let answerIndex = buttonsSingle.firstIndex(of: sender) else { return }
        let answer = currentAnswers[answerIndex]
        createResponderAnswer(_answer: answer)
        
        nextQuestion()
    }
    
    
    @IBAction func multipleButtonPressed(_ sender: UIButton) {
        for (index, view) in multipleStackView.arrangedSubviews.enumerated() {
            guard let stackView = view as? UIStackView else { continue }
            guard let switchView = stackView.arrangedSubviews.last as? UISwitch else { continue }
            if switchView.isOn {
                let answer = currentAnswers[index]
                createResponderAnswer(_answer: answer)
            }
        }
        nextQuestion()
        
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let numberOfSteps = Float(currentAnswers.count - 1)
        let step = 1 / numberOfSteps
        let index = round(rangrSlider.value * numberOfSteps)
        sender.value = step * index
        
    }
    
    
    
    @IBAction func rangedButtonPressed(_ sender: UIButton) {
        let index = Int(round(rangrSlider.value * Float(currentAnswers.count - 1)))
        let answer = currentAnswers[index]
        createResponderAnswer(_answer: answer)
        nextQuestion()
        }
    
    

    
    @IBAction func first(_ sender: UITapGestureRecognizer) {
        let answer = currentAnswers[0]
        createResponderAnswer(_answer: answer)
        nextQuestion()
        
    }
    
    @IBAction func second(_ sender: UITapGestureRecognizer) {
        let answer = currentAnswers[1]
        createResponderAnswer(_answer: answer)
        nextQuestion()
    }
    
    @IBAction func third(_ sender: UITapGestureRecognizer) {
        let answer = currentAnswers[2]
       createResponderAnswer(_answer: answer)
        nextQuestion()
    }
    
    @IBAction func `for`(_ sender: UITapGestureRecognizer) {
        let answer = currentAnswers[3]
        createResponderAnswer(_answer: answer)
        nextQuestion()
    }
    
    
    func createResponderAnswer(_answer: Answer){
        if questionsGroupIndex == 0{
            answersChosen.append(_answer)
        }else{
            responseAnswer.append(_answer)
            
        }
        
    }
    
    
    
    
//    func updateZodiacImage(image: [UIImageView]){
//
//
//
//        for images in collectionQuestionsImage{
//            let randomIndex = Int(arc4random_uniform(UInt32(nameImage.count)))
//            images.image = UIImage(named: nameImage[randomIndex])
//
//
//            print (nameImage)
//            print (randomIndex)
//        }
//    }
}

