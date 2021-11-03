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

        print(resultAnswers.count)
        let resultDog = resultAnswers.filter { $0.type == .dog }
        let resultCat = resultAnswers.filter { $0.type == .cat }
        let resultRabbit = resultAnswers.filter { $0.type == .rabbit }
        let resultTurtle = resultAnswers.filter { $0.type == .turtle}
        print("Dogs - \(resultDog.count), Cats - \(resultCat.count), Rabbits - \(resultRabbit.count), Turtles - \(resultTurtle.count) ")
        print("\(resultsOfQuiz.turtle.definition)")
        
    }


    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соотвствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
}

