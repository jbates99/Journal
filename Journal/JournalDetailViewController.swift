//
//  JournalDetailViewController.swift
//  Journal
//
//  Created by Joshua Bates on 4/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

enum EntryType {
    case new
    case existing
}

class JournalDetailViewController: UIViewController {
    
    @IBOutlet var entryTitleTextField: UITextField!
    @IBOutlet var journalTextView: UITextView!
    
    var entryType = EntryType.new
    var entry = Entry()
    
    override func viewDidLoad() {
        entryTitleTextField.text = entry.title
        journalTextView.text = entry.content
    }
    
    @IBAction func saveJournal(sender: AnyObject) {
        switch entryType {
        case .new:
            saveNewEntry()
        case .existing:
            updateEntry()
        }
    }
    
    func updateEntry() {
        
    }
    
    func saveNewEntry() {
        guard let title = entryTitleTextField.text where !title.isEmpty else { return }
        guard !journalTextView.text.isEmpty else { return }
        
        let newEntry = Entry(name: title, entry: journalTextView.text)
        
        JournalController.sharedController.addEntry(newEntry)
        print(JournalController.sharedController.entries)
        navigationController?.popViewControllerAnimated(true)
        
        entryTitleTextField.text = nil
        journalTextView.text = nil
    }
}

