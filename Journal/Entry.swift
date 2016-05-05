//
//  JournalEntries.swift
//  Journal
//
//  Created by Joshua Bates on 4/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    let date: NSDate
    let title: String
    var content: String
    
    init(date: NSDate = NSDate(), name: String, entry: String) {
        self.date = date
        self.title = name
        self.content = entry
    }
    
    convenience init() {
        self.init(date: NSDate(), name: "", entry: "")
        
    }
    
    
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.date == rhs.date && lhs.title == rhs.title && lhs.content == rhs.content
}