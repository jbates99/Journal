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
            saveEntry(true)
        case .existing:
            saveEntry(false)
        }
    }
    
    private func saveEntry(add: Bool) {
        guard let title = entryTitleTextField.text where !title.isEmpty else { return }
        guard !journalTextView.text.isEmpty else { return }
        entry.title = title
        entry.content = journalTextView.text
        entry.date = NSDate()
        
        if add == true {
            JournalController.sharedController.addEntry(entry)
        }
        navigationController?.popViewControllerAnimated(true)
    }
    
}

