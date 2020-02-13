//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 11.02.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var animalLabel: UILabel!
    
    // MARK: Private properties
    var answerChoosen: [Answer]!

    // MARK: Override functions
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    // MARK: Private functions
    private func updateUI() {
        if let animalType = getMostCommonType() {
            animalLabel.text = "Вы - \(animalType.rawValue)"
            descriptionLabel.text = animalType.description
        } 
    }
    
    private func getMostCommonType() -> AnimalType? {
        var freqTypes: [AnimalType: Int] = [:]
        
        answerChoosen.forEach { freqTypes[$0.type, default: 0] += 1 }

        return freqTypes.sorted(by: { $0.value > $1.value } ).first?.key
    }
    
    deinit {
        print("ResultsViewController was been dealocated")
    }
}
