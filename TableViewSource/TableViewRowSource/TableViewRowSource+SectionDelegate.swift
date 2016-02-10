//
//  TableViewRowSource+SectionDelegate.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import Foundation

extension TableViewRowSource {
    
    func willDisplayCell(cell: UITableViewCell, forRow row: Int) {
        willDisplayCell(cell)
    }
    
    func didEndDisplayingCell(cell: UITableViewCell, forRow row: Int) {
        didEndDisplayingCell(cell)
    }
    
    func heightForRow(row: Int) -> CGFloat {
        return height
    }
    
    func estimatedHeightForRow(row: Int) -> CGFloat {
        return estimatedHeight
    }
    
    func accessoryButtonTappedForRow(row: Int) {
        accessoryButtonTapped()
    }
    
    func shouldHighlightRow(row: Int) -> Bool {
        return shouldHighlight
    }
    
    func didHighlightRow(row: Int) {
        didHighlight()
    }
    
    func didUnhighlightRow(row: Int) {
        didUnhighlight()
    }
    
    func willSelectRow(row: Int) -> Int? {
        return willSelect() ? row : nil
    }
    
    func willDeselectRow(row: Int) -> Int? {
        return willDeselect() ? row : nil
    }
    
    func didSelectRow(row: Int) {
        didSelect()
    }
    
    func didDeselectRow(row: Int) {
        didDeselect()
    }
    
    func editingStyleForRow(row: Int) -> UITableViewCellEditingStyle {
        return editingStyle
    }
    
    func titleForDeleteConfirmationButtonForRow(row: Int) -> String? {
        return titleForDeleteConfirmationButton
    }
    
    func editActionsForRow(row: Int) -> [UITableViewRowAction]? {
        return editActions
    }
    
    func shouldIndentWhileEditingRow(row: Int) -> Bool {
        return shouldIndentWhileEditing
    }
    
    func willBeginEditingRow(row: Int) {
        willBeginEditing()
    }
    
    func didEndEditingRow(row: Int) {
        didEndEditing()
    }
    
    func indentationLevelForRow(row: Int) -> Int {
        return indentationLevel
    }
    
    func shouldShowMenuForRow(row: Int) -> Bool {
        return shouldShowMenu
    }
    
    func canPerformAction(action: Selector, forRow row: Int, withSender sender: AnyObject?) -> Bool {
        return canPerformAction(action, withSender: sender)
    }
    
    func performAction(action: Selector, forRow row: Int, withSender sender: AnyObject?) {
        performAction(action, forRow: row, withSender: sender)
    }
    
}