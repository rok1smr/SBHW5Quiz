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
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        let resultDog = resultAnswers.filter { $0.type == .dog } .count
        let resultCat = resultAnswers.filter { $0.type == .cat } .count
        let resultRabbit = resultAnswers.filter { $0.type == .rabbit } .count
        let resultTurtle = resultAnswers.filter { $0.type == .turtle} .count
        print("Dogs - \(resultDog), Cats - \(resultCat), Rabbits - \(resultRabbit), Turtles - \(resultTurtle) ")
        
        let resultResult = ["dog": resultDog, "cat": resultCat, "rabbit": resultRabbit, "turtle": resultTurtle]
        print(resultResult)
        
        let sortedResult = resultResult.sorted { (first, second) -> Bool in
            return first.value > second.value }
        print(sortedResult)
        
        let firstOfSortedResult = sortedResult.first!.key
        print(firstOfSortedResult)
        
        switch firstOfSortedResult {
        case "dog":
            resultText.text = resultsOfQuiz.dog.definition
            print("dog case worked")
        case "cat":
            resultText.text = resultsOfQuiz.cat.definition
            print("cat case worked")
        case "rabbit":
            resultText.text = resultsOfQuiz.rabbit.definition
            print("rabbit case worked")
        case "turtle":
            resultText.text = resultsOfQuiz.turtle.definition
            print("turtle case worked")
        default:
            print("default case statement")
        }
    }
}

