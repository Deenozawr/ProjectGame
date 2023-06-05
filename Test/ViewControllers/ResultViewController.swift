//
//  ResultViewController.swift
//  Test
//
//  Created by Денис on 03/06/2023.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    var answersChosen: [Answer] = []
    var rightAnswersCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        let result = answersChosen.count
        resultLabel.text = "Total result is \(rightAnswersCount) out of \(result)"
    }
    

    @IBAction func playAgainButtonPressed() {
        dismiss(animated: true)
    }
    

}
// В конце, не забыть про инкапсуляцию (сделать все метода и свойства привтаными, если они не будут использоваться вне класса)
