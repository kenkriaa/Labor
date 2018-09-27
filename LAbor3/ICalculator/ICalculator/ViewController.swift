//
//  ViewController.swift
//  ICalculator
//
//  Created by Kristòf Kenyeres on 2018. 09. 27..
//  Copyright © 2018. BME AUT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextFieldA: UITextField!
    @IBOutlet weak var inputTextFieldB: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    private var operationType = OperationType.add
    
    @IBOutlet weak var operationSelector: UISegmentedControl!
    
    
    enum OperationType {
        case add
        case multiply
        case divide
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        operationSelector.selectedSegmentIndex = 0
        inputTextFieldA.text = "13"
    }

    @IBAction func calculateButton(_ sender: Any) {
        let numberFormatter = NumberFormatter()
        
        if
            let textA = inputTextFieldA.text,
            let textB = inputTextFieldB.text,
            let a = numberFormatter.number(from: textA)?.doubleValue,
            let b = numberFormatter.number(from: textB)?.doubleValue {
        
            if(operationType == .add)
            {
                resultLabel.text = "\(a + b)"
            }
            
            if(operationType == .multiply)
            {
                resultLabel.text = "\(a * b)"
            }
            
            if(operationType == .divide)
            {
                resultLabel.text = "\(a / b)"
            }
        }
      view.endEditing(true)
    }
    
    @IBAction func operationSelectorValueChanged(_ sender: Any) {
        switch operationSelector.selectedSegmentIndex {
        case 0:
            operationType = .add
        case 1:
            operationType = .multiply
        case 2:
            operationType = .divide
        default:
            return
        }
    }
    
    @IBAction func onBackgroundTuochUpInside(_ sender: UIControl) {
        view.endEditing(true)
    }
}

