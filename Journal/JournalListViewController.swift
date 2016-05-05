//
//  JournalListViewController.swift
//  Journal
//
//  Created by Joshua Bates on 4/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class JournalListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Mark: Actions
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.reloadData()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return JournalController.sharedController.entries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("JournalCell", forIndexPath: indexPath)
        
        let entryForRow = JournalController.sharedController.entries[indexPath.row]
        
        cell.textLabel?.text = entryForRow.title
        cell.detailTextLabel?.text = "\(entryForRow.date)"
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let detailViewController = segue.destinationViewController as? JournalDetailViewController else { fatalError("unexpected destination from segue") }
        if segue.identifier == "SeeJournal" {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                let entry = JournalController.sharedController.entries[selectedIndexPath.row]
                detailViewController.entry = entry
                detailViewController.entryType = .existing
            }
        } else if segue.identifier == "newEntry" {
            detailViewController.entryType = .new
        }
    }
    
}


