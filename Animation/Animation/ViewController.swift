//
//  ViewController.swift
//  Animation
//
//  Created by Vanipanta,Divya Reddy on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var myView: UIView! {
        didSet{
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(growAndShrink(_:)))
            
            myView.addGestureRecognizer(tapGestureRecognizer)
        }
    }
    
    @objc func growAndShrink(_ recognizer : UITapGestureRecognizer) {
        switch recognizer.state {
        case .ended:
            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {self.myView.transform = CGAffineTransform.identity.scaledBy(x: 1.5, y: 1.5)},
                completion: {finished in
                UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {self.myView.transform = CGAffineTransform.identity.scaledBy(x: 1.0, y: 1.0)}, completion: nil)
            })
        default:
            break
        }
        
    }
    
    @IBAction func rotate(_ sender: UIButton) {
        UIView.animate(withDuration: 0.8, delay: 0.3, options: [.repeat, .curveEaseInOut], animations: {
            self.myView.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi)
        }, completion: nil)
    }
    @IBAction func stopRotation(_ sender: UIButton) {
        self.myView.layer.removeAllAnimations()
    }
    @IBAction func disappear(_ sender: UIButton) {
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {self.myView.alpha = 0.0}, completion: nil)
    }
    
    @IBAction func reappear(_ sender: UIButton) {
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.7, delay: 0, options: [.curveLinear], animations: {self.myView.alpha = 1.0}, completion: nil)
    }
    @IBAction func transition(_ sender: UIButton) {
        UIView.transition(with: self.myView, duration: 0.8, options: [.transitionFlipFromLeft], animations: {
            self.myView.backgroundColor = UIColor(red: self.random(), green: self.random(), blue: self.random(), alpha: 1.0)
        }, completion: nil)
    }
    func random()->CGFloat{
        CGFloat(arc4random())/CGFloat(UInt32.max)
    }
}

