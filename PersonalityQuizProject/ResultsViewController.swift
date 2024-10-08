//
//  ResultsViewController.swift
//  PersonalityQuizProject
//
//  Created by Skyler Robbins on 10/6/24.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into: [:]){
            (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        let frequencyOfAnswersSorted = frequencyOfAnswers.sorted(by: {
            (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequencyOfAnswersSorted.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    
    var responses: [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
