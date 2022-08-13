//
//  Tricks.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/13/22.
//

import Foundation
import Foundation
import UIKit
import SwiftUI

struct Trick {
    
    var _name: String
    var _description: String
    var _learned: Bool
    
    init(name: String, desc: String, learned: Bool) {
        _name = name
        _description = desc
        _learned = learned
    }
    
    var name: String {
        set { _name = newValue }
        get { return _name }
    }
    
    var description: String {
        set { _description = newValue }
        get { return _description }
    }
    
    var learned: Bool {
        set { _learned = newValue }
        get { return _learned }
    }
    
}


