//
//  EntryController.swift
//  Journal
//
//  Created by Joshua Bates on 4/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class JournalController {
    
    static let sharedController = JournalController()
    
    var entries = [Entry]()
    
    // Create, Retrieve, Update, Delete
    
    func addEntry(entry: Entry) {
        entries.append(entry)
        
    }
    
    func updateEntry(entry: Entry) {
        
    }
    
    func removeEntry(entry: Entry) {
        
        if let entryIndex = entries.indexOf(entry) {
            entries.removeAtIndex(entryIndex)
        }
    }
    
    
}
