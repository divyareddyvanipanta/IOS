//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Vanipanta,Divya Reddy on 3/30/22.
//

import UIKit

class ViewController: UIViewController {

    private var word: Word = Word(token: "", clue: "")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }

    @IBOutlet weak var token: UILabel!
    @IBOutlet weak var clue: UILabel!
    @IBAction func check(_ sender:                                                                                                       UIButton) {
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
    }
    @IBOutlet weak var pickerView: UIPickerView!
    
    struct Word {
        var token = "";
        var clue = "";
    }
}

