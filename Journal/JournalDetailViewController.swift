//
//  JournalDetailViewController.swift
//  Journal
//
//  Created by Joshua Bates on 4/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class JournalDetailViewController: UIViewController {
    
    @IBOutlet var entryTitleTextField: UITextField!
    @IBOutlet var journalTextView: UITextView!
    
    @IBAction func saveJournal(sender: AnyObject) {
        guard let title = entryTitleTextField.text where !title.isEmpty else { return }
        guard !journalTextView.text.isEmpty else { return }
        
        let newEntry = Entry(name: title, entry: journalTextView.text)
        
        JournalController.sharedController.addEntry(newEntry)
        print(JournalController.sharedController.entries)
        navigationController?.popViewControllerAnimated(true)
    }
    
    
}
