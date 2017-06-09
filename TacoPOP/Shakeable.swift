//
//  Shakeable.swift
//  TacoPOP
//
//  Created by J. M. Lowe on 6/9/17.
//  Copyright © 2017 JMLeaux LLC. All rights reserved.
//

import UIKit

protocol Shakeable {}

extension Shakeable where Self: UIView {
    func shake() {
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.05
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y - 4.0))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y + 4.0))
        layer.add(anim, forKey: "position")
    }
}
