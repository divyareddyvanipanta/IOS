//
//  ViewController.swift
//  Vanipanta_FormatName
//
//  Created by Vanipanta,Divya Reddy on 2/7/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        if let firstName = self.firstNameTextField.text, let lastName = self.lastNameTextField.text, !firstName.isEmpty, !lastName.isEmpty {
            self.displayLabel.text = "\(firstName), \(lastName)"
        }
    }
    @IBAction func onClickOfReset(_ sender: UIButton) {
        self.firstNameTextField.text = ""
        self.lastNameTextField.text = ""
        self.displayLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
}

