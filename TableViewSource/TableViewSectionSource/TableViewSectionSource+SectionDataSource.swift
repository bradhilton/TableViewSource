//
//  TableViewSectionSource+SectionDataSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import Foundation

extension TableViewSectionSource {
    
    func numberOfRows() -> Int {
        return 0
    }
    
    func cellForRow(row: Int) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func titleForHeader() -> String? {
        return nil
    }
    
    func titleForFooter() -> String? {
        return nil
    }
    
    func canEditRow(row: Int) -> Bool {
        return false
    }
    
    func canMoveRow(row: Int) -> Bool {
        return false
    }
    
    func sectionIndexTitle() -> String? {
        return nil
    }
    
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRow: Int) {}
    func moveRow(sourceRow: Int, toRow destinationRow: Int) {}
    
}