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
    
    var journal: [JournalEntry] = []
    
    // Create, Retrieve, Update, Delete
    
    func addEntry(name: String, date: NSDate, entry: String) {
        let newEntry = JournalEntry(date: date, name: name, entry: entry)
        journal.append(newEntry)
    }
    
    /* func retrieveEntry {
     
     }
     */
    
    /*
     func updateEntry {
     }
     */
    
    /* func deleteEntry {
     
     }
     */
    
}