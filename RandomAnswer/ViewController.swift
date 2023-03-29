//
//  ViewController.swift
//  RandomAnswer
//
//  Created by Азалия Халилова on 27.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        answerButton.layer.cornerRadius = 5
    }

    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "YES" : "NO"
        }
    }
}

