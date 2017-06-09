//
//  DropShadow.swift
//  TacoPOP
//
//  Created by J. M. Lowe on 6/8/17.
//  Copyright © 2017 JMLeaux LLC. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {       //note capitalized Self - for protocols and extensions
    func addDropShadow() {
        //implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
