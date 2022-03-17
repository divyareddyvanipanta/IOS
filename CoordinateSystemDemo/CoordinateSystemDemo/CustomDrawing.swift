//
//  CustomDrawing.swift
//  CoordinateSystemDemo
//
//  Created by Vanipanta,Divya Reddy on 3/14/22.
//

import UIKit

class CustomDrawing: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: self.bounds.midX, y: self.bounds.midY-MyDrawing.pointDiff))
        path.addLine(to: CGPoint(x: self.bounds.midX+(MyDrawing.pointDiff*2), y: self.bounds.midY+MyDrawing.pointDiff))
        path.addLine(to: CGPoint(x: self.bounds.midX-(MyDrawing.pointDiff*2), y: self.bounds.midY+MyDrawing.pointDiff))
        path.addLine(to: CGPoint(x: self.bounds.midX, y: self.bounds.midY-MyDrawing.pointDiff))
        
//        path.move(to: CGPoint(x: self.bounds.midX-MyDrawing.pointDiff, y: self.bounds.midY-MyDrawing.pointDiff))
//        path.addLine(to: CGPoint(x: self.bounds.midX-MyDrawing.pointDiff, y: self.bounds.midY))
//        path.addLine(to: CGPoint(x: self.bounds.midX+MyDrawing.pointDiff, y: self.bounds.midY))
//        path.addLine(to: CGPoint(x: self.bounds.midX+MyDrawing.pointDiff, y: self.bounds.midY+MyDrawing.pointDiff))
//
//
//        path.move(to: CGPoint(x: self.bounds.midX-MyDrawing.pointDiff, y: self.bounds.midY+MyDrawing.pointDiff))
//        path.addLine(to: CGPoint(x: self.bounds.midX, y: self.bounds.midY+MyDrawing.pointDiff))
//        path.addLine(to: CGPoint(x: self.bounds.midX, y: self.bounds.midY-MyDrawing.pointDiff))
//        path.addLine(to: CGPoint(x: self.bounds.midX+MyDrawing.pointDiff, y: self.bounds.midY-MyDrawing.pointDiff))
        
        path.lineWidth = MyDrawing.lineWidth
        UIColor.red.setStroke()
        UIColor.blue.setFill()
        path.stroke()
        path.fill()
    }
    struct MyDrawing {
        static let pointDiff = CGFloat(50.0)
        static let lineWidth = CGFloat(5.0)
    }

}
