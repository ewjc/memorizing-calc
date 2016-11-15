//
//  ViewController.swift
//  Memorizing calculator
//
//  Created by Eric Wong on 11/15/16.
//  Copyright © 2016 Make-Stars. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum calcOperator: String {
        case add = "+"
        case subtract = "-"
        case equal = "="
        case clear = ""
    }
    
    var initialNumber = ""
    var saveNumber = ""
    var totalNumber = ""
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var clearLabelButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        initialNumber += "\(sender.tag)"
        answerLabel.text = "\(initialNumber)"
    }
    
    @IBAction func add(_ sender: UIButton) {
        
    }
    
    func processOperation (operation: calcOperator) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



}

