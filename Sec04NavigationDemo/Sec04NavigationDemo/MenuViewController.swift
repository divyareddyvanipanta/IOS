//
//  MenuViewController.swift
//  Sec04NavigationDemo
//
//  Created by chandra on 3/21/22.
//

import UIKit
import AVFoundation

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backButtonTitle = "Back"
    }
    
    private let prices = [10.50, 7.99, 5.50, 3.50, 6.39, 4.30, 3.50, 2.00]
    
    var username = ""
    
    private var orderTotal = 0.0
    
    
    @IBAction func animateWhenTapped(_ sender: UITapGestureRecognizer) {
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
            
            sender.view?.transform = CGAffineTransform.identity.scaledBy(x: 1.1, y: 1.1)
        }, completion: {finished in
            
            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
                
                sender.view?.transform = CGAffineTransform.identity.scaledBy(x: 1.0, y: 1.0)
            }, completion: nil)
            
        })
        
        let soundID: SystemSoundID = 1104
        AudioServicesPlayAlertSound(soundID)
        
        self.orderTotal += self.prices[sender.view!.tag]
    }
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let identifier = segue.identifier{
             
             switch identifier{
                 
             case "beigeToRed":
                 let osVC = segue.destination as? OrderStatusViewController
                 
                 osVC?.orderTotal = self.orderTotal
                 
                 osVC?.username = self.username
                 
                 osVC?.navigationItem.title = "Order confirmed"
             default: break
             }
         }
     }
    
}
