//
//  JournalDetailViewController.swift
//  Journal
//
//  Created by Joshua Bates on 4/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class JournalDetailViewController: UIViewController {
    
    var entry: JournalEntry? {
        didSet {
            
        }
    }
    
    @IBAction func saveJournal(sender: AnyObject) {
    }
    
    
    // Outlets
    
    @IBOutlet var entryName: UITextField!
    @IBOutlet var journalText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
