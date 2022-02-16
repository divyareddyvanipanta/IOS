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
    }
    
    var courses: Dictionary<String, Dictionary<String, String>> = [
        "cybersec" : ["title" : "Cybersecurity", "crn": "44652", "termOffered": "Fall"],
        "java" : ["title" : "Object-Oriented Prog in Java", "crn": "44542", "termOffered": "Fall/Spring"],
        "ios" : ["title" : "Mobile Computing-IOS", "crn": "44653", "termOffered": "Fall/Spring"],
    ]

    @IBOutlet weak var courseIconIMG: UIImageView!
    @IBOutlet weak var CourseTitle: UILabel!
    @IBOutlet weak var CourseCRN: UILabel!
    @IBOutlet weak var termOffered: UILabel!
    @IBOutlet weak var courseDescLBL: UILabel!
    @IBAction func previous(_ sender: UIButton) {
    }
    @IBAction func next(_ sender: UIButton) {
    }
}

