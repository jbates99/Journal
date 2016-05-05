//
//  Entry.swift
//  Journal
//
//  Created by Joshua Bates on 4/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    private let dateKey = "date"
    private let titleKey = "title"
    private let contentKey = "content"
    
    var date: NSDate
    var title: String
    var content: String
    
    init(date: NSDate = NSDate(), name: String, entry: String) {
        self.date = date
        self.title = name
        self.content = entry
    }
    
    init?(dictionary: [String : AnyObject]) {
        guard let date = dictionary[dateKey] as? NSDate, title = dictionary[titleKey] as? String, content = dictionary[contentKey] as? String else { return nil }
        self.date = date
        self.content = content
        self.title = title
    }
    
    convenience init() {
        self.init(date: NSDate(), name: "", entry: "")
    }
    
    func dictionaryCopy() -> [String : AnyObject] {
        return [dateKey : self.date, contentKey : self.content, titleKey : self.title]
    }
    
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.date == rhs.date && lhs.title == rhs.title && lhs.content == rhs.content
}
