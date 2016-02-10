//
//  TableViewRowSource+SectionDataSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewRowSource {
    
    func cellForRow(row: Int) -> UITableViewCell {
        return cell
    }
    
    func canEditRow(row: Int) -> Bool {
        return canEdit
    }
    
    func canMoveRow(row: Int) -> Bool {
        return canMove
    }
    
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRow: Int) {
        return commitEditingStyle(editingStyle)
    }
    
}
