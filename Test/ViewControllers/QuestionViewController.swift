//
//  ViewController.swift
//  Test
//
//  Created by Денис on 03/06/2023.
//

import UIKit

final class QuestionViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var moviePicture: UIImageView!
    @IBOutlet var singleButtons: [UIButton]!
    
    
    //MARK: - Private properties
    private let questions = Question.getQuestions()
    
    private var answersChosen: [Answer] = []
    private var answersChosenMovies: [Game] = []
    
    private var questionIndex = 0
    
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }

    private var currentRightAnswer: Answer {
        currentAnswers.filter { $0.isRight }[0]
    }

    private var currentPicture: Picture {
        questions[questionIndex].moviePicture
    }

    var rightAnswersCount = 0
    
    //MARK: - Override func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviePicture.image = UIImage(named: "Shawshank")
        moviePicture.accessibilityIdentifier = "Shawshank"
        updateUI()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.answersChosen = answersChosen
        resultVC.rightAnswersCount = rightAnswersCount
    }
    
    //MARK: - IBActions
    @IBAction func singleButtonAnswerPressed(_ sender: UIButton) {
        guard let buttonIndex = singleButtons.firstIndex(of: sender) else { return }
        let currentAnswer = currentAnswers[buttonIndex]
        answersChosen.append(currentAnswer)
        
        guard let buttonText = sender.titleLabel?.text else { return }
        let isRightAnswerSelected = buttonText == currentRightAnswer.title
        sender.tintColor = isRightAnswerSelected
        ? .green
        : .red
        rightAnswersCount += isRightAnswerSelected
        ? 1
        : 0
        showAlert(isRightAnswerSelected)
    }

    func showAlert(_ isSuccess: Bool) {
        let alert = UIAlertController(
            title: isSuccess
            ? "Success"
            : "Wrong anser",
            message: nil,
            preferredStyle: .alert
        )

        alert.addAction(
            UIAlertAction(
                title: "Ok",
                style: isSuccess
                ? .default
                : .destructive
            ) { [unowned self] _ in
                nextQuestion()
            }
        )
        present(alert, animated: true)
    }
    
}
//MARK: - Extenstion for QuestionViewController
extension QuestionViewController {
    func updateUI() {
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        // Set progress for questionProgressView
        questionProgressView.setProgress(totalProgress, animated: true)
        
        // Set navigation title
        title = "Qustion № \(questionIndex + 1) from \(questions.count)"
        
        showSingleButtonsAnswers(with: currentAnswers.shuffled())
        moviePicture.image = UIImage(named: currentPicture.title)
        singleButtons.forEach { $0.tintColor = .systemBlue }
    }
    
    private func showSingleButtonsAnswers(with answers: [Answer]) {
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.title, for: .normal)
        }
        
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "showResult", sender: nil)
    }
    
    
}
