//
//  ResultViewController.swift
//  Test
//
//  Created by Денис on 03/06/2023.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    var answersChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setHidesBackButton(true, animated: true)
        
        let result = answersChosen.count
        resultLabel.text = "Total result is \(result) out of \(answersChosen.count)"
    }
    

    @IBAction func playAgainButtonPressed() {
        dismiss(animated: true)
    }
    

}
