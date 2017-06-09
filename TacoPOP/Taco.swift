//
//  Taco.swift
//  TacoPOP
//
//  Created by J. M. Lowe on 6/8/17.
//  Copyright © 2017 JMLeaux LLC. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 0
    case Corn = 1
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 0
    case Plain = 1
}


struct Taco {
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: TacoProtein!
    private var _condimentId: TacoCondiment!
    
    var id: Int { if _id == nil { return 0 }; return _id }
    
    var productName: String { if _productName == "" { return "" }; return _productName }
    var shellId: TacoShell { if _shellId == nil { return TacoShell.Flour }; return _shellId }
    var proteinId: TacoProtein { if _proteinId == nil { return TacoProtein.Beef }; return _proteinId }
    var condimentId: TacoCondiment { if _condimentId == nil { return TacoCondiment.Loaded }; return _condimentId }
    
    init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
        _id = id
        _productName = productName
        
        switch shellId {
        case 1: _shellId = TacoShell.Corn
        default: _shellId = TacoShell.Flour
        }
 
        switch proteinId {
        case 2: _proteinId = TacoProtein.Brisket
        case 1: _proteinId = TacoProtein.Chicken
        case 3: _proteinId = TacoProtein.Fish
        default: _proteinId = TacoProtein.Beef
        }
        
        switch condimentId {
        case 1: _condimentId = TacoCondiment.Plain
        default: _condimentId = TacoCondiment.Loaded
        }
        
    }
}
