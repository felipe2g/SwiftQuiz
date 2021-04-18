//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by Felipe Guimarães on 16/04/21.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var viTime: UIView!
    
    @IBOutlet weak var lbQuestion: UILabel!
    
    @IBOutlet var btAnswer: [UIButton]!
    
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viTime.frame.size.width = view.frame.size.width
        
        UIView.animate(withDuration: 5.0, delay: 0, options: .curveLinear) {
            self.viTime.frame.size.width = 0
        } completion: { (sucess) in
            self.showResults()
        }

        getNewQuiz()
    }

    func getNewQuiz() {
        quizManager.refreshQuiz()
        
        lbQuestion.text = quizManager.question
        
        for i in 0..<quizManager.options.count {
            let option = quizManager.options[i]
            let button = btAnswer[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults() {
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        
        resultViewController.totalAnswers = quizManager.totalAnswers
        resultViewController.totalCorrectAnswers = quizManager.totalCorrectAnswers
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = btAnswer.firstIndex(of: sender)!
        quizManager.validateAnswer(index: index)
        
        getNewQuiz()
    }
    
}
