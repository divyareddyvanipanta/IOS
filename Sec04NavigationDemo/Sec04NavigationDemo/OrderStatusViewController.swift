//
//  OrderStatusViewController.swift
//  Sec04NavigationDemo
//
//  Created by chandra on 3/21/22.
//

import UIKit

class OrderStatusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.messageLBL.text = "Thank you \(self.username). Your order is successfully submitted. The order total is \(self.orderTotal)"
    }
    
    var username = ""
    
    var orderTotal = 0.0
    
    @IBOutlet weak var messageLBL: UILabel!


}
