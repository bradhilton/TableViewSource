//
//  TableViewSectionSource+DataSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewSectionSource {
    
    func numberOfRowsInSection(section: Int) -> Int {
        return numberOfRows()
    }
    
    func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell {
        return cellForRow(indexPath.row)
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func titleForHeaderInSection(section: Int) -> String? {
        return titleForHeader()
    }
    
    func titleForFooterInSection(section: Int) -> String? {
        return titleForFooter()
    }
    
    func canEditRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return canEditRow(indexPath.row)
    }
    
    func canMoveRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return canMoveRow(indexPath.row)
    }
    
    func sectionIndexTitles() -> [String]? {
        guard let sectionIndexTitle = sectionIndexTitle() else { return nil }
        return [sectionIndexTitle]
    }
    
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        commitEditingStyle(editingStyle, forRow: indexPath.row)
    }
    
    func moveRowAtIndexPath(sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        moveRow(sourceIndexPath.row, toRow: destinationIndexPath.row)
    }
    
}