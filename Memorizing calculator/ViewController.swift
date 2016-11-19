//
//  ViewController.swift
//  Memorizing calculator
//
//  Created by Eric Wong on 11/15/16.
//  Copyright © 2016 Make-Stars. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    var equationArray: [String]! = []
    var runningNumber = ""
    var saveNumber = ""
    var leftNumber = ""
    var rightNumber = ""
    var answer: Int!
    var operand = ""
    
    // MARK: IBOutlets
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var clearLabelButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var completedResults: UILabel!
    
    // MARK: Functions
    func calculate() {
        var firstNumber = Int(leftNumber)
        var secondNumber = Int(rightNumber)
        
        if operand == CalculateOperator.add.rawValue {
            answer = firstNumber! + secondNumber!
            answerLabel.text = String(answer)
        } else if operand == CalculateOperator.subtract.rawValue {
            answer = firstNumber! - secondNumber!
            answerLabel.text = String(answer)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "destinationVC" {
            let destinationVC = segue.destination as! EquationTableViewController
            destinationVC.VC = self
        }
    }
    
    //MARK: IBActions
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        runningNumber += "\(sender.tag)"
        answerLabel.text = "\(runningNumber)"
    }
    
    @IBAction func add(_ sender: UIButton) {
        if runningNumber != "" {
            leftNumber = runningNumber
            runningNumber = ""
            answerLabel.text = "+"
            operand = ""
            operand = CalculateOperator.add.rawValue
        }
    }
    
    @IBAction func subtract(_ sender: UIButton) {
        if runningNumber != "" {
            leftNumber = runningNumber
            runningNumber = ""
            answerLabel.text = "-"
            operand = ""
            operand = CalculateOperator.subtract.rawValue
        }
    }

    @IBAction func equal(_ sender: UIButton) {
        rightNumber = runningNumber
        calculate()
        if answer != nil {
            var equation = "\(leftNumber) \(operand) \(rightNumber) = \(answer!)"
            equationArray.append(equation)
            rightNumber = ""
            completedResults.text = "Completed Results: \(equationArray.count)"
            print(equationArray)
        }
    }

    @IBAction func clear(_ sender: UIButton) {
        runningNumber = ""
        leftNumber = ""
        rightNumber = ""
        answerLabel.text = ""
    }
    
    //MARK: View Did Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        completedResults.text = "Completed Results: \(equationArray.count)"
    }
    
}

