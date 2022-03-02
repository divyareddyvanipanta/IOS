//
//  ViewController.swift
//  DisplayCourses
//
//  Created by Vanipanta,Divya Reddy on 2/14/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayCourse(at: courseIdx)
    }
    
    var courses: Dictionary<String, Dictionary<String, String>> = [
        "cybersec" : ["title" : "Cybersecurity", "crn": "44652", "termOffered": "Fall", "desc": "Cybersecurity is the practice of protecting critical systems and sensitive information from digital attacks.", "icon": "cybersec"],
        "java" : ["title" : "Object-Oriented Prog in Java", "crn": "44542", "termOffered": "Fall/Spring", "desc": "Java is an object-oriented programming language that produces software for multiple platforms. When a programmer writes a Java application, the compiled code (known as bytecode) runs on most operating systems (OS), including Windows, Linux and Mac OS.", "icon": "java"],
        "ios" : ["title" : "Mobile Computing-IOS", "crn": "44653", "termOffered": "Fall/Spring", "desc": "iOS (formerly iPhone OS) is a mobile operating system created and developed by Apple Inc. exclusively for its hardware. It is the operating system that powers many of the company's mobile devices, including the iPhone and iPod Touch", "icon": "ios"],
    ]

    lazy var courseIdx = Int(arc4random_uniform(UInt32(self.courses.count)))
    @IBOutlet weak var courseIconIMG: UIImageView!
    @IBOutlet weak var CourseTitle: UILabel!
    @IBOutlet weak var CourseCRN: UILabel!
    @IBOutlet weak var termOffered: UILabel!
    @IBOutlet weak var courseDescLBL: UILabel!
    @IBAction func previous(_ sender: UIButton) {
        if self.courseIdx > 0 {
            self.courseIdx -= 1
            displayCourse(at: self.courseIdx)
        }
    }
    @IBAction func next(_ sender: UIButton) {
        if self.courseIdx < self.courses.count-1 {
            self.courseIdx += 1
            displayCourse(at: self.courseIdx)
        }
    }
    func displayCourse(at index: Int) {
        let courseName = Array(self.courses.keys)[index]
        if let course = self.courses[courseName] {
            self.courseIconIMG.image = UIImage(named: course["icon"]!)
            self.CourseTitle.text = course["title"]
            self.CourseCRN.text = course["crn"]
            self.termOffered.text = course["termOffered"]
            self.courseDescLBL.text = course["desc"]
        }
    }
}

