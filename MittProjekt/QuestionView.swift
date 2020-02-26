//
//  Questions.swift
//  MittProjekt
//
//  Created by Robert Sundin on 2020-01-23.
//  Copyright © 2020 Robert Sundin. All rights reserved.
//

import UIKit

class QuestionView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    @IBOutlet weak var playerTurn: UILabel!
    @IBOutlet weak var playerPoints: UILabel!
    @IBOutlet weak var questionText: UITextView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    var players : [Player]?
    var currentplayerIndex = 0
    var currentQuestion : QuestionObject!
    var questions = Questions()
    var score = 0
    var currentQuestionPos = 0
    
    
    var pickerData: [String] =  ["", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
        pickerView.selectRow(0, inComponent: 0, animated: false)
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        currentQuestion = questions.questions[currentQuestionPos]
        questionText.text = currentQuestion.question
        playerTurn.text = (players?[currentplayerIndex].name)
    }
    
    
    @IBAction func backbuttonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "backhomeSegue", sender: self)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return  pickerData[row]
    }
    
    
    func updateUi() {
        if let scores = players?.map({ "\($0.score)" }) {
            playerPoints.text = "Points: \(scores.joined(separator: ", "))"
            
        }
    }
    
     func loadnextQuestion () {
            if(currentQuestionPos < questions.questions.count) {
            currentQuestionPos += 1
            
            if currentplayerIndex < players!.count - 1 {
                currentplayerIndex += 1
            } else {
                currentplayerIndex = 0
            }
                playerTurn.text = (players?[currentplayerIndex].name)
                currentQuestion = questions.questions[currentQuestionPos]
                questionText.text = currentQuestion.question
        }
    }
    
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        let i = pickerView.selectedRow(inComponent: 0)
        if(currentQuestion.answer == i) {
            players?[currentplayerIndex].score += 1
            updateUi()
            checkWinner ()
            loadnextQuestion()
        } else {
            updateUi()
            loadnextQuestion()
        }
    }
    
    
    func checkWinner () {
        if(players?[currentplayerIndex].score == 5) {
            print("winner")
            winnerAlert(title: "Winner", message: "You are a Winner")
         }
    }
    
    func winnerAlert (title:String, message: String) {
        let alert = UIAlertController(title: "Winner!", message:  "The winner is:  \(String(describing: (players?[currentplayerIndex].name)))", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Restart game", style:UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func currentplayerScore () {
        
    }
    
    
}
