//
//  ViewController.swift
//  Vanipanta_Calculator
//
//  Created by Vanipanta,Divya Reddy on 3/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayLabel.text = ""
    }
    
    var operation: Character = " "
    var operandOne: Double = 0
    var operandTwo: Double = 0
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func buttonAC(_ sender: UIButton) {
        displayLabel.text =  "";
        operandOne = 0
        operandTwo = 0
        operation = " "
    }
    @IBAction func buttonC(_ sender: UIButton) {
        displayLabel.text = ""
    }
    @IBAction func buttonChangeSign(_ sender: UIButton) {
        if (displayLabel.text == "-" || displayLabel.text == "") {
            clearResult()
            displayLabel.text = "+" + displayLabel.text!
         } else if(displayLabel.text == "+") {
             clearResult()
             displayLabel.text = "-" + displayLabel.text!
         } else {
             operandOne = Double(displayLabel.text!)!
             operandOne = Double(operandOne * -1);
             displayLabel.text!  = String(operandOne)
         }
    }
    @IBAction func buttonDivision(_ sender: UIButton) {
        operation = "/"
        if displayLabel.text != "" {
            operandOne = Double(displayLabel.text!)!
            displayLabel.text = displayLabel.text! + "/"
            clearResult()
        }
        else {
            displayLabel.text! = "/"
        }
    }
    @IBAction func buttonSeven(_ sender: UIButton) {
        appendData("7")
    }
    @IBAction func buttonEight(_ sender: UIButton) {
        appendData("8")
    }
    @IBAction func buttonNine(_ sender: UIButton) {
        appendData("9")
    }
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        operation = "*"
        if displayLabel.text != "" {
            operandOne = Double(displayLabel.text!)!
            displayLabel.text = displayLabel.text! + "*"
            clearResult()
        }
        else {
            displayLabel.text! = "*"
        }
    }
    @IBAction func buttonFour(_ sender: UIButton) {
        appendData("4")
    }
    @IBAction func buttonFive(_ sender: UIButton) {
        appendData("5")
    }
    @IBAction func buttonSix(_ sender: UIButton) {
        appendData("6")
    }
    @IBAction func buttonSubtraction(_ sender: UIButton) {
        operation = "-"
        if displayLabel.text != "" {
            operandOne = Double(displayLabel.text!)!
            displayLabel.text = displayLabel.text! + "-"
            clearResult()
        }
        else {
            displayLabel.text! = "-"
        }
    }
    @IBAction func buttonOne(_ sender: UIButton) {
        appendData("1")
    }
    @IBAction func buttonTwo(_ sender: UIButton) {
        appendData("2")
    }
    @IBAction func buttonThree(_ sender: UIButton) {
        appendData("3")
    }
    @IBAction func buttonAddition(_ sender: UIButton) {
        operation = "+"
        if displayLabel.text != "" {
            operandOne = Double(displayLabel.text!)!
            displayLabel.text = displayLabel.text! + "+"
            clearResult()
        }
        else {
            displayLabel.text! = "+"
        }
    }
    @IBAction func buttonZero(_ sender: UIButton) {
        appendData("0")
    }
    @IBAction func buttonDecimal(_ sender: UIButton) {
        appendData(".")
    }
    @IBAction func buttonResult(_ sender: UIButton) {
        operandTwo = Double(displayLabel.text!)!
        var finalOperand: Double = 0.0
        var finalResult = ""
        switch(operation) {
        case "+":
            finalOperand = operandOne + operandTwo
            finalResult = isDouble(finalOperand: &finalOperand)
            displayLabel.text! = finalResult
        case "*":
            finalOperand = operandOne * operandTwo
            finalResult = isDouble(finalOperand: &finalOperand)
            displayLabel.text! = finalResult
        case "-":
            finalOperand = operandOne - operandTwo
            finalResult = isDouble(finalOperand: &finalOperand)
            displayLabel.text! = finalResult
        case "/":
            if (operandTwo == 0.0){
                displayLabel.text = "Error"
            }else {
                finalOperand = operandOne / operandTwo
                finalOperand =   round(finalOperand * 100000) / 100000.0
                displayLabel.text = String(finalOperand)
            }
        default:
            clearResult()
        }
    }
    
    func isDouble(finalOperand:inout Double)->String {
        var val = ""
        if((floor(finalOperand)) == finalOperand) {
            val = String(Int(finalOperand))
        }
        else {
            val = String(Double(finalOperand))
        }
        return val
    }
    
    func appendData(_ number: String) {
        displayLabel .text! += number
    }
    
    func clearResult() {
        displayLabel.text = ""
    }
}

