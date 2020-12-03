//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Thiago Cardoso on 01/12/20.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswers: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbAnswers.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        var score : Int = 0
        if totalAnswers != 00 {
            score = totalCorrectAnswers * 100 / totalAnswers
        }
        
        lbScore.text = "\(score)%"
    }

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
