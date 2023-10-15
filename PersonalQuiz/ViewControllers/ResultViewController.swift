//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.08.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultNameLabel: UILabel!
    
    var resultResult: [Answer] = []
    var countDog = 0
    var countCat = 0
    var countRabbit = 0
    var countTurtle = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(resultResult)
        getResultFromArray()
    }
    
    @IBAction func doneBarItem(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
    
    private func getResultFromArray() {
        var nameResult = ""
        var symbolResult = ""
        
        guard let firstResult = resultResult.first else { return }
        switch firstResult.animal {
        case .dog: nameResult = "Вы - Собака"
        case .cat: nameResult = "Вы - Кот"
        case .rabbit: nameResult = "Вы - Кролик"
        case .turtle: nameResult = "Вы - Черепаха"
        }
        symbolResult = String(firstResult.animal.rawValue)
        resultLabel.text = "Вы - \(symbolResult)"
        resultNameLabel.text = nameResult
        
//        switch firstResult.title {
//        case "Стейк": symbolResult = "Вы - 🐶"; nameResult = "Вы - Собака"; countDog += 1
//        case "Рыба": symbolResult = "Вы - 🐱"; nameResult = "Вы - Кот"; countCat += 1
//        case "Морковь": symbolResult = "Вы - 🐰"; nameResult = "Вы - Кролик"; countRabbit += 1
//        case "Кукуруза": symbolResult = "Вы - 🐢"; nameResult = "Вы - Черепаха"; countTurtle += 1
//        default:
//            break
//        }
//        resultLabel.text = symbolResult
//        resultNameLabel.text = nameResult
        
        
        guard let secondResult = resultResult.last else { return }
        print(secondResult.animal)
    }
}
