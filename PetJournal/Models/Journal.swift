//
//  Journal.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//

import Foundation
import UIKit
import SwiftUI

struct Journal {
    var _numEntries: Int = 0
    var _entries: Array<Entry> = [Entry()]
    //private(set) var _entries = [Entry()]
    var _newEntry = Entry()
    
    init() {
        _numEntries = numEntries
        _entries = entries
        _newEntry = newEntry
    }
    var numEntries: Int {
        set { _numEntries = self._entries.count}
        get { return _numEntries }
    }
    var entries: Array<Entry> {
        set { _entries[0] = newEntry }
        get { return _entries }
    }
    var newEntry: Entry {
        set { _newEntry = Entry() }
        get { return _newEntry }
    }
    
    
    
    
    
}
