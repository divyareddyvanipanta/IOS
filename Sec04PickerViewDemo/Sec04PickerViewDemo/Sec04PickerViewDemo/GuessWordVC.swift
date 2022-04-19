//
//  ViewController.swift
//  Sec04PickerViewDemo
//
//  Created by chandra on 3/28/22.
//

import UIKit
import AVFoundation

class GuessWordVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // outlets
    
    @IBOutlet weak var guessWordLBL: UILabel!
    
    @IBOutlet weak var clueLBL: UILabel!
    
    @IBOutlet weak var checkBTN: UIButton!
    
    @IBOutlet weak var playAgainBTN: UIButton!
    
    @IBOutlet weak var alphabetPV: UIPickerView!
    
    private var words = [Word]()
    
    private let alphabet = "abcdefghijklmnopqrstuvwxyz".uppercased()
    
    private var characterChosen = ""
    
    private var word: Word = Word(token: "", clue: "")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.alphabetPV.delegate = self
        
        self.alphabetPV.dataSource = self
        
        self.words.append(Word(token: "Swift", clue: "An iOS programming language"))
        
        self.words.append(Word(token: "Dog", clue: "An animal that barks"))
        
        self.words.append(Word(token: "Macbook", clue: "A computer with iOS installed"))
        
        self.words.append(Word(token: "Bicycle", clue: "A non-automatic two wheeler"))
        
        setGame()
    }
    
    // actions
    @IBAction func check(_ sender: UIButton) {
        
        //let bgColor = self.checkBTN.configuration?.baseBackgroundColor
        
        if self.characterChosen != "" && self.word.token.lowercased().contains(self.characterChosen.lowercased()){
            
            AudioServicesPlaySystemSound(SystemSoundID(1150))
            
            for idx in 0..<self.word.token.count{
                
                let stringIdx  = self.word.token.index(self.word.token.startIndex, offsetBy: idx)
                
                if self.characterChosen.lowercased() == String(self.word.token[stringIdx]).lowercased(){
                    
                    self.guessWordLBL.text = self.guessWordLBL.text!.prefix(idx) + self.characterChosen + self.guessWordLBL.text!.dropFirst(idx+1)
                }
            }
            
//            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.8, delay: 0, options: .curveEaseInOut, animations: {
//                self.checkBTN.configuration?.baseBackgroundColor = .green
//            }, completion: {finished in
//
//                UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
//                    self.checkBTN.configuration?.baseBackgroundColor = bgColor
//            }, completion: nil)})
        }else{
            
            AudioServicesPlaySystemSound(SystemSoundID(1050))
        }
        
        if self.word.token.uppercased() == self.guessWordLBL.text {
            let alert = UIAlertController(title: "Congrats!", message: "You guessed the right word.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
            self.playAgainBTN.isEnabled = true
        }
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        setGame()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        self.alphabet.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        String(self.alphabet[self.alphabet.index(self.alphabet.startIndex, offsetBy: row)])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.characterChosen = String(self.alphabet[self.alphabet.index(self.alphabet.startIndex, offsetBy: row)])
    }
    
    private func setGame(){
        
        self.word = self.words[Int.random(in: 0..<self.words.count)]
        
        mask(a: self.word)
        
        self.clueLBL.text = "Clue: \(self.word.clue)"
        
        self.playAgainBTN.isEnabled = false
    }
    
    private func mask(a word: Word){
        
        self.guessWordLBL.text = ""
        
        let specialCharacters = ["🟧", "❌", "✳️", "❓", "♟", "🚗"]
        
        for _ in 0..<word.token.count{
            
            let randIndex = arc4random_uniform(UInt32(specialCharacters.count))
            
            let symbol = specialCharacters[Int(randIndex)]
            
            self.guessWordLBL.text! += symbol
        }
    }
    
    
}

// model of the app
struct Word{
    var token: String
    var clue: String
    
    init(token: String, clue: String){
        self.token = token
        self.clue = clue
    }
}

