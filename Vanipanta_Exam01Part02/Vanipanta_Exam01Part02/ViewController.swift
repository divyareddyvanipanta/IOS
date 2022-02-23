//
//  ViewController.swift
//  Vanipanta_Exam01Part02
//
//  Created by Vanipanta,Divya Reddy on 2/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.bookNameTF.isEnabled = false
        self.checkBookBTN.isEnabled = false
        self.checkOutBTN.isEnabled = false
        self.bookNameLBL.isEnabled = false
        self.displayLabel.text = ""
    }
    
    @IBOutlet weak var bookNameLBL: UILabel!
    @IBOutlet weak var studentNameTF: UITextField!
    
    @IBOutlet weak var bookNameTF: UITextField!
    
    @IBOutlet weak var checkBookBTN: UIButton!
    
    @IBOutlet weak var checkOutBTN: UIButton!
    
    @IBAction func checkStudentBTN(_ sender: UIButton) {
        if let studentName = self.studentNameTF.text, !studentName.isEmpty {
            if students.contains(studentName) {
                self.bookNameLBL.isEnabled = true
                self.bookNameTF.isEnabled = true
                self.checkBookBTN.isEnabled = true
                self.displayLabel.text = ""
            }
            else {
                self.displayLabel.text = "Student not found."
            }
        }
    }
    @IBAction func checkBookBTN(_ sender: UIButton) {
        if let bookName = self.bookNameTF.text, !bookName.isEmpty {
            if !library.contains(bookName) {
                self.displayLabel.text = "Book not found."
            }else{
                if let studentName = self.studentNameTF.text, let studentRecords = self.records[studentName] {
                    //self.displayLabel.text = "enetered iknside"
                    if (studentRecords.contains(bookName)){
                        self.displayLabel.text = "Book is already assigned to you."
                    }else if ((studentRecords.count) >= 4) {
                        self.displayLabel.text = "You cannot check out more than four books."
                    }
                    else{
                        self.checkOutBTN.isEnabled = true
                        self.displayLabel.text = "\(bookName) is available for check-out."
                    }
                }
            }
            
        }
    }
    @IBAction func checkOutBTN(_ sender: UIButton) {
        if let studentName = self.studentNameTF.text, let bookName = self.bookNameTF.text {
            var records = self.records[studentName]
            records?.append(bookName)
            self.records.updateValue(records!, forKey: studentName)
            self.displayLabel.text = """
                Name: \(studentName)
                Books checked out: \(records!).
                """
            self.checkOutBTN.isEnabled = false
        }
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var library = ["book1", "book3", "book2", "book10", "book5", "book6", "book7"]
    var students = ["john", "paul", "alexa", "david"]
    
    var records = [ "john" : [ "book1", "book3"],
                    "paul" : ["book2", "book3", "book10"],
                    "alexa" : ["book1", "book5", "book6", "book7"],
                    "david" : []
    ]
    
}

