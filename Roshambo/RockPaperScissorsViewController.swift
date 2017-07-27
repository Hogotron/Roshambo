//
//  ViewController.swift
//  Roshambo
//
//  Created by Tomas Sidenfaden on 5/16/17.
//  Copyright © 2017 Tomas Sidenfaden. All rights reserved.
//

import UIKit

class RockPaperScissorsViewController: UIViewController {
    
    // MARK: Randomizer Function
    
    func randomRoshamboValue() -> String {
        let randomValue = 1 + arc4random() % 3
        var result: String!
        switch randomValue {
        case 1: result = "Rock"
        case 2: result = "Paper"
        case 3: result = "Scissors"
        default: result = "None"
        }
        return result
    }
    
    // MARK: Rock - Segue Done Programatically
    
@IBAction func rockSegueProgramatically() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let resultVC = storyboard.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
    
    
        resultVC.yourValue = "Rock"
        resultVC.compValue = randomRoshamboValue()

        self.navigationController?.pushViewController(resultVC, animated: true)
    }
    
    // MARK: Paper - Segue Done With Segue & Code
    
    @IBAction func paperSegueAndCode() {
        self.performSegue(withIdentifier: "choosePaper", sender: self)
        print("Clicked paper button.")
    }
 
    
    // MARK: Scissors - Segue Done With Storyboard
    
    // MARK: Segue Prepare For Sender Bullshit
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultsViewController
        if segue.identifier == "choosePaper" {
            controller.yourValue = "Paper"
            controller.compValue = randomRoshamboValue()
        }
        if segue.identifier == "chooseScissors" {
            controller.yourValue = "Scissors"
            controller.compValue = randomRoshamboValue()
        }
    }
}
