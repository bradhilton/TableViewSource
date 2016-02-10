//
//  TableViewRowSource+RowDataSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewRowSource {
    
    var cell: UITableViewCell {
        return UITableViewCell()
    }
    
    var canEdit: Bool {
        return false
    }
    
    var canMove: Bool {
        return false
    }
    
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle) {}
    
}
