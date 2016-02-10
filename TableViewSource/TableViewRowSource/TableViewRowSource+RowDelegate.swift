//
//  TableViewRowSource+RowDelegate.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewRowSource {
    
    func willDisplayCell(cell: UITableViewCell) {}
    func didEndDisplayingCell(cell: UITableViewCell) {}
    
    var height: CGFloat {
        return _interface.rowHeight
    }
    
    var estimatedHeight: CGFloat {
        return _interface.estimatedRowHeight
    }
    
    func accessoryButtonTapped() {}
    
    var shouldHighlight: Bool {
        return true
    }
    
    func didHighlight() {}
    func didUnhighlight() {}
    
    func willSelect() -> Bool {
        return true
    }
    
    func willDeselect() -> Bool {
        return true
    }
    
    func didSelect() {}
    func didDeselect() {}
    
    var editingStyle: UITableViewCellEditingStyle {
        return .None
    }
    
    var titleForDeleteConfirmationButton: String? {
        return nil
    }
    
    var editActions: [UITableViewRowAction]? {
        return nil
    }
    
    var shouldIndentWhileEditing: Bool {
        return true
    }
    
    func willBeginEditing() {}
    func didEndEditing() {}
    
    var indentationLevel: Int {
        return 15
    }
    
    var shouldShowMenu: Bool {
        return false
    }
    
    func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool {
        return false
    }
    
    func performAction(action: Selector, withSender sender: AnyObject?) {}
    
}