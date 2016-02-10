//
//  TableViewSource+DataSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

extension TableViewSource {
    
    func numberOfRowsInSection(section: Int) -> Int {
        return 0
    }
    
    func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func numberOfSections() -> Int {
        return 0
    }
    
    func titleForHeaderInSection(section: Int) -> String? {
        return nil
    }
    
    func titleForFooterInSection(section: Int) -> String? {
        return nil
    }
    
    func canEditRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return false
    }
    
    func canMoveRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return false
    }
    
    func sectionIndexTitles() -> [String]? {
        return nil
    }
    
    func sectionForSectionIndexTitle(title: String, atIndex index: Int) -> Int {
        return 0
    }
    
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {}
    func moveRowAtIndexPath(sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {}
    
}