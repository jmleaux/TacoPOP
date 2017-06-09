//
//  ReusableView.swift
//  TacoPOP
//
//  Created by J. M. Lowe on 6/9/17.
//  Copyright © 2017 JMLeaux LLC. All rights reserved.
//

import UIKit

protocol ReuseableView: class {}

extension ReuseableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
