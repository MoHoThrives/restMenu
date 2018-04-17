//
//  gradientView.swift
//  GradientPractice
//
//  Created by Mohanad Osman on 4/17/18.
//  Copyright © 2018 Mohanad. All rights reserved.
//

import UIKit
@IBDesignable


class gradientView: UIView {

@IBInspectable var topColor: UIColor = #colorLiteral(red: 1, green: 0.9204275704, blue: 0.8258905356, alpha: 1)  {
    didSet {
        self.setNeedsLayout()
    }
}
    
@IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1) {
    didSet {
        self.setNeedsLayout()
    }
}
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x:0, y:0)
        gradientLayer.endPoint = CGPoint(x:1 , y:1)
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
