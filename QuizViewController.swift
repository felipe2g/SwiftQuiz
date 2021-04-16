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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        
    }
    
}
