//
//  UITableView+DataSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

extension UITableView : UITableViewDataSource {
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source?.numberOfRowsInSection(section) ?? 0
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return source?.cellForRowAtIndexPath(indexPath) ?? UITableViewCell()
    }
   
    public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return source?.numberOfSections() ?? 0
    }
    
    public func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return source?.titleForHeaderInSection(section)
    }
    
    public func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return source?.titleForFooterInSection(section)
    }

    public func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return source?.canEditRowAtIndexPath(indexPath) ?? false
    }
    
    public func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return source?.canMoveRowAtIndexPath(indexPath) ?? false
    }
    
    public func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return source?.sectionIndexTitles()
    }
    
    public func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        return source?.sectionForSectionIndexTitle(title, atIndex: index) ?? 0
    }
    
    public func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        source?.commitEditingStyle(editingStyle, forRowAtIndexPath: indexPath)
    }
    
    public func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        source?.moveRowAtIndexPath(sourceIndexPath, toIndexPath: destinationIndexPath)
    }
    
}

