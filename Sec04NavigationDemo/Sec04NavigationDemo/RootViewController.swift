//
//  ViewController.swift
//  Sec04NavigationDemo
//
//  Created by chandra on 3/21/22.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.backButtonTitle = "Logout"
    }
    
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier{
            
            switch identifier{
                
            case "blueToBeige":
                let menuVC = segue.destination as? MenuViewController
                
                menuVC?.username = self.usernameTF.text!
                
                menuVC?.navigationItem.title = "Hello, \(self.usernameTF.text!)"
            default: break
            }
        }
    }


}

