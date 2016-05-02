//
//  JournalEntries.swift
//  Journal
//
//  Created by Joshua Bates on 4/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class JournalEntry: Equatable {
    let date: NSDate
    let name: String
    var entry: String
    
    init(date: NSDate = NSDate(), name: String, entry: String) {
        self.date = date
        self.name = name
        self.entry = entry
    }
    
}

func ==(lhs: JournalEntry, rhs: JournalEntry) -> Bool {
    return lhs.date == rhs.date && lhs.name == rhs.name && lhs.entry == rhs.entry
}