//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Tomas Sidenfaden on 5/16/17.
//  Copyright © 2017 Tomas Sidenfaden. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: Properties
    
    var yourValue: String!
    var compValue: String!
    
    // MARK: Outlets
    
    @IBOutlet weak var roshamboResult: UIImageView!
    @IBOutlet weak var roshamboTextResult: UITextField!
    
    // MARK: Actions
    
    @IBAction func playAgain() {
        self.dismiss(animated: true, completion: nil)
    }

    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if yourValue == "Rock" {
            if compValue == "Rock" {
                self.roshamboResult.image = #imageLiteral(resourceName: "itsATie")
                self.roshamboTextResult.text = "That's a tie, big boy"
            } else if compValue == "Scissors" {
                self.roshamboResult.image = #imageLiteral(resourceName: "RockCrushesScissors")
                self.roshamboTextResult.text = "Rock crushes scissors. You win!"
            } else if compValue == "Paper" {
                self.roshamboResult.image = #imageLiteral(resourceName: "PaperCoversRock")
                self.roshamboTextResult.text = "Paper covers rock. You lose!"
            }
        }
        if yourValue == "Paper" {
            if compValue == "Paper" {
                self.roshamboResult.image = #imageLiteral(resourceName: "itsATie")
                self.roshamboTextResult.text = "That's a tie, Shruti"
            } else if compValue == "Scissors" {
                self.roshamboResult.image = #imageLiteral(resourceName: "ScissorsCutPaper")
                self.roshamboTextResult.text = "Scissors cut paper. You lose!"
            } else if compValue == "Rock" {
                self.roshamboResult.image = #imageLiteral(resourceName: "PaperCoversRock")
                self.roshamboTextResult.text = "Paper covers rock. You win!"
            }
        }
        if yourValue == "Scissors" {
            if compValue == "Scissors" {
                self.roshamboResult.image = #imageLiteral(resourceName: "itsATie")
                self.roshamboTextResult.text = "That's a tie, there ole sport"
            } else if compValue == "Rock" {
                self.roshamboResult.image = #imageLiteral(resourceName: "RockCrushesScissors")
                self.roshamboTextResult.text = "Rock crushes scissors. You lose, you COWARD!"
            } else if compValue == "Paper" {
                self.roshamboResult.image = #imageLiteral(resourceName: "ScissorsCutPaper")
                self.roshamboTextResult.text = "Scissors cut paper. You win!"
            }
        }
    }
}
