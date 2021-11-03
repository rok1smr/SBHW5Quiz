//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultText: UILabel!
    
    var resultAnswers:[Answer] = []
    let resultsOfQuiz = AnimalType.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true);

        let resultDog = resultAnswers.filter { $0.type == .dog } .count
        let resultCat = resultAnswers.filter { $0.type == .cat } .count
        let resultRabbit = resultAnswers.filter { $0.type == .rabbit } .count
        let resultTurtle = resultAnswers.filter { $0.type == .turtle} .count
        print("Dogs - \(resultDog), Cats - \(resultCat), Rabbits - \(resultRabbit), Turtles - \(resultTurtle) ")
        
    }
}

