//
//  ViewController.swift
//  VanipantaWeightConverter
//
//  Created by Vanipanta,Divya Reddy on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var lbTF: UITextField!
    @IBOutlet weak var kgLBL: UILabel!
    @IBOutlet weak var kgTF: UITextField!
    @IBOutlet weak var lbLBL: UILabel!
    
    
    @IBAction func LbsToKgs(_ sender: UIButton) {
        let temp = (Double(self.lbTF.text!) ?? 0.0) * 0.45359237
        kgLBL.text = String(format: "%.2f", temp)
    }
    
    
    @IBAction func KgsToLbs(_ sender: UIButton) {
        let temp = (Double(self.kgTF.text!) ?? 0.0) / 0.45359237
        lbLBL.text = String(format: "%.2f", temp)
    }

}

