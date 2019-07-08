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
   
    var questionIndex = 0
    var answersChosen = [Answer]()
    var answer: relationshipTies?
    var currentQuestionIndex = 0
    var allQuestions: [Question]!
    var currentGroupQuestions = [Question]()
    
    var currentQuestion: Question {
        return currentGroupQuestions[currentQuestionIndex]
    }
    
    var currentAnswers: [Answer] {
        return currentQuestion.answer
    }
    
    
     // MARK: - UIViewController Methods
        override func viewDidLoad() {
        super.viewDidLoad()
        allQuestions = Question.all
        createCurrentGroupQustions()
        updateUI()
        
            
    }
    
   
    
    func checkOut(){
        if answer != nil{
            var allKey = [relationshipTies]()
            for question in allQuestions{
                allKey.append(question.relationshipTies.keys.first!)
    
        }
        if allKey.contains(answer!){
            print ("aaa")
        }else{
            currentQuestionIndex -= 4
            performSegue(withIdentifier: "ResultSegue", sender: nil)
        }
    }
    }
    func nextQuestion() {
        questionIndex += 1
        currentQuestionIndex += 1
        
        if currentQuestionIndex < currentGroupQuestions.count{
           
            updateUI()
            print(currentGroupQuestions.count)
        }else{
            

            let answers = answersChosen.map {$0.relationshipTies}
            var answersCount = [relationshipTies: Int]()
            answers.forEach { answer in
                answersCount[answer] = (answersCount[answer] ?? 0) + 1
            }
            let sortedAnswer = answersCount.sorted { $0.value > $1.value}
           
            answer = sortedAnswer.first!.key
            print (" это массив ответов до \(answersChosen.count)")
            
            checkOut()
            answersChosen.removeAll()
            print (" это массив ответов после \(answersChosen.count)")
   
            createCurrentGroupQustions()

            updateUI()
            
        }
    }
    
    
    
    
    func createCurrentGroupQustions(){
        
        let common = relationshipTies.common
        
        if answer != nil{
            print("создание новых вопросов")
            for question in allQuestions{
                if answer == question.relationshipTies.keys.first!{
                        currentGroupQuestions.append(question)
                        print("добавление\(currentGroupQuestions.count)")
                        
                    }else{
                        print("вышел из созданияЭ")
                    

                       
                    }
                    }
                    
            
            
        } else{
            print("вызов начальных вопросов")
            for question in allQuestions{
                if common == question.relationshipTies.keys.first{
                    currentGroupQuestions.append(question)
                    
                } else{
                    
        
                    }
             
                }
        }
    }
     // MARK: - Custom Methods
    func updateUI(){
     
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangeStackView.isHidden = true
        imageStackView.isHidden = true
        
        let progress = Float(allQuestions.count - 4) / 2
//        здесь нужно взять меняющуюся величину но времени нет
       
        navigationItem.title = "Вопрос № \(questionIndex + 1) из \(4 + (allQuestions.count - 4)/2)"
        questionLabel.text = currentQuestion.text
       progressView.setProgress(progress, animated: true)

        switch currentQuestion.type {

        case .single:
            updateSingleStack(with: currentAnswers)

        case .multiple:
            updateMultipleStack(with: currentAnswers)

        case .ranged:
            updateRangedStack(with: currentAnswers)

        case .image:
            updateImageStack(with: currentAnswers)

        }
  
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
  
    
    
    
    
      // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ResultSegue" else { return }
        let destination = segue.destination as! ResultViewController
        destination.responses = answer!
       
    }
    

     // MARK: - Actions
    @IBAction func singleButtonPressed(_ sender: UIButton) {
        guard let answerIndex = buttonsSingle.firstIndex(of: sender) else { return }
        let answer = currentAnswers[answerIndex]
        answersChosen.append(answer)
        nextQuestion()
    }
    
    
    @IBAction func multipleButtonPressed(_ sender: UIButton) {
        for (index, view) in multipleStackView.arrangedSubviews.enumerated() {
            guard let stackView = view as? UIStackView else { continue }
            guard let switchView = stackView.arrangedSubviews.last as? UISwitch else { continue }
            if switchView.isOn {
                let answer = currentAnswers[index]
                answersChosen.append(answer)            }
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
        answersChosen.append(answer)
        nextQuestion()
        }
    
    

    
    @IBAction func first(_ sender: UITapGestureRecognizer) {
        let answer = currentAnswers[0]
        answersChosen.append(answer)
        nextQuestion()
        
    }
    
    @IBAction func second(_ sender: UITapGestureRecognizer) {
        let answer = currentAnswers[1]
        answersChosen.append(answer)
        nextQuestion()
    }
    
    @IBAction func third(_ sender: UITapGestureRecognizer) {
        let answer = currentAnswers[2]
         answersChosen.append(answer)
        nextQuestion()
    }
    
    @IBAction func forthAnswer(_ sender: UITapGestureRecognizer) {
        let answer = currentAnswers[3]
        answersChosen.append(answer)
        nextQuestion()
    }
  
    
    

}


extension Array where Element == Question{
    
    func receiveQuestions(relationship relasion: relationshipTies, questions: [Question]) -> [Question]{
       
        var currentQuestions = [Question]()
        
        
       
        for question in questions{
            
        let values = question.relationshipTies.values
            for value in values{
                if value.contains(relasion){
                     currentQuestions.append(question)
                }
                
            }
            
        }
    return currentQuestions
}
}
//extension Array where Element == Question{
//
//    func firstQuestionsCount(questions: [Question]) -> Int{
//        var keyArray = [relationshipTies]()
//        var valueArray = [relationshipTies]()
//        for question in questions{
//            for key in question.relationshipTies.keys{
//                keyArray.append(key)
//            }
//            for value in question.relationshipTies.values{
//                for v in value{
//                    valueArray.append(v)
//                }
//            }
//        }
//
//
//
//    }
//
//
//
//
//}


extension Array where Element == Question{

    func receiveAllKey(questions: [Question]) -> [relationshipTies]{
        var allKey = [relationshipTies]()
        for question in questions{
            allKey.append(question.relationshipTies.keys.first!)
        }
        return allKey
    }

}
