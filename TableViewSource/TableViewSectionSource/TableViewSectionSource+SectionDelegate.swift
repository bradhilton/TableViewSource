//
//  TableViewSectionSource+SectionDelegate.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

extension TableViewSectionSource {
    
    func willDisplayCell(cell: UITableViewCell, forRow row: Int) {}
    func willDisplayHeaderView(view: UIView) {}
    func willDisplayFooterView(view: UIView) {}
    func didEndDisplayingCell(cell: UITableViewCell, forRow row: Int) {}
    func didEndDisplayingHeaderView(view: UIView) {}
    func didEndDisplayingFooterView(view: UIView) {}
    
    func heightForRow(row: Int) -> CGFloat {
        return _interface.rowHeight
    }
    
    func heightForHeader() -> CGFloat {
        return _interface.sectionHeaderHeight
    }
    
    func heightForFooter() -> CGFloat {
        return _interface.sectionFooterHeight
    }
    
    func estimatedHeightForRow(row: Int) -> CGFloat {
        return _interface.estimatedRowHeight
    }
    
    func estimatedHeightForHeader() -> CGFloat {
        return _interface.estimatedSectionHeaderHeight
    }
    
    func estimatedHeightForFooter() -> CGFloat {
        return _interface.estimatedSectionFooterHeight
    }
    
    func viewForHeader() -> UIView? {
        return nil
    }
    
    func viewForFooter() -> UIView? {
        return nil
    }
    
    func accessoryButtonTappedForRow(row: Int) {}
    
    func shouldHighlightRow(row: Int) -> Bool {
        return true
    }
    
    func didHighlightRow(row: Int) {}
    func didUnhighlightRow(row: Int) {}
    
    func willSelectRow(row: Int) -> Int? {
        return row
    }
    
    func willDeselectRow(row: Int) -> Int? {
        return row
    }
    
    func didSelectRow(row: Int) {}
    func didDeselectRow(row: Int) {}
    
    func editingStyleForRow(row: Int) -> UITableViewCellEditingStyle {
        return .None
    }
    
    func titleForDeleteConfirmationButtonForRow(row: Int) -> String? {
        return nil
    }
    
    func editActionsForRow(row: Int) -> [UITableViewRowAction]? {
        return nil
    }
    
    func shouldIndentWhileEditingRow(row: Int) -> Bool {
        return true
    }
    
    func willBeginEditingRow(row: Int) {}
    func didEndEditingRow(row: Int) {}
    
    func targetRowForMoveFromRow(sourceRow: Int, toProposedRow proposedDestinationRow: Int) -> Int {
        return proposedDestinationRow
    }
    
    func indentationLevelForRow(row: Int) -> Int {
        return 15
    }
    
    func shouldShowMenuForRow(row: Int) -> Bool {
        return false
    }
    
    func canPerformAction(action: Selector, forRow row: Int, withSender sender: AnyObject?) -> Bool {
        return false
    }
    
    func performAction(action: Selector, forRow row: Int, withSender sender: AnyObject?) {}
    
}
