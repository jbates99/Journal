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
    
    private let entriesKey = "entries"
    
    var entries = [Entry]()
    
    init() {
        self.entries = []
        self.loadFromPersistentStorage()
    }
    
    // MARK: - Create, Retrieve, Update, Delete
    
    func addEntry(entry: Entry) {
        entries.append(entry)
    }
    
    func removeEntry(entry: Entry) {
        if let entryIndex = entries.indexOf(entry) {
            entries.removeAtIndex(entryIndex)
        }
    }
    
    func loadFromPersistentStorage() {
        let entryDictionariesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey(entriesKey) as? [Dictionary<String, AnyObject>]
        if let entryDictionaries = entryDictionariesFromDefaults {
            self.entries = entryDictionaries.map ( { Entry(dictionary: $0)! } )
        }
    }
    
    func saveToPersistentStorage() {
        let entryDictionaries = self.entries.map( { $0.dictionaryCopy() } )
        NSUserDefaults.standardUserDefaults().setObject(entryDictionaries, forKey: entriesKey)
    }
}
