//
//  secondView.swift
//  GradientPractice
//
//  Created by Mohanad Osman on 4/17/18.
//  Copyright © 2018 Mohanad. All rights reserved.
//

import UIKit
@IBDesignable
class secondView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    override func layoutSubviews() {
        
            let gradientLayer = CAGradientLayer()
            
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.35, y: 0.72)
            gradientLayer.endPoint = CGPoint(x: 0.79, y: 0.95)
            gradientLayer.frame = self.bounds
            
            self.layer.insertSublayer(gradientLayer, at: 0)
        
        }
    }

