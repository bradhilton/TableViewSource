//
//  TableViewSectionSource+Delegate.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewSectionSource {
    
    func willDisplayCell(cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        willDisplayCell(cell, forRow: indexPath.row)
    }
    
    func willDisplayHeaderView(view: UIView, forSection section: Int) {
        willDisplayHeaderView(view)
    }
    
    func willDisplayFooterView(view: UIView, forSection section: Int) {
        willDisplayFooterView(view)
    }
    
    func didEndDisplayingCell(cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        didEndDisplayingCell(cell, forRow: indexPath.row)
    }
    
    func didEndDisplayingHeaderView(view: UIView, forSection section: Int) {
        didEndDisplayingHeaderView(view)
    }
    
    func didEndDisplayingFooterView(view: UIView, forSection section: Int) {
        didEndDisplayingFooterView(view)
    }
    
    func heightForRowAtIndexPath(indexPath: NSIndexPath) -> CGFloat {
        return heightForRow(indexPath.row)
    }
    
    func heightForHeaderInSection(section: Int) -> CGFloat {
        return heightForHeader()
    }
    
    func heightForFooterInSection(section: Int) -> CGFloat {
        return heightForFooter()
    }
    
    func estimatedHeightForRowAtIndexPath(indexPath: NSIndexPath) -> CGFloat {
        return estimatedHeightForRow(indexPath.row)
    }
    
    func estimatedHeightForHeaderInSection(section: Int) -> CGFloat {
        return estimatedHeightForHeader()
    }
    
    func estimatedHeightForFooterInSection(section: Int) -> CGFloat {
        return estimatedHeightForFooter()
    }
    
    func viewForHeaderInSection(section: Int) -> UIView? {
        return viewForHeader()
    }
    
    func viewForFooterInSection(section: Int) -> UIView? {
        return viewForFooter()
    }
    
    func accessoryButtonTappedForRowWithIndexPath(indexPath: NSIndexPath) {
        accessoryButtonTappedForRow(indexPath.row)
    }
    
    func shouldHighlightRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return shouldHighlightRow(indexPath.row)
    }
    
    func didHighlightRowAtIndexPath(indexPath: NSIndexPath) {
        didHighlightRow(indexPath.row)
    }
    
    func didUnhighlightRowAtIndexPath(indexPath: NSIndexPath) {
        didUnhighlightRow(indexPath.row)
    }
    
    func willSelectRowAtIndexPath(indexPath: NSIndexPath) -> NSIndexPath? {
        return NSIndexPath(row: willSelectRow(indexPath.row), section: indexPath.section)
    }
    
    func willDeselectRowAtIndexPath(indexPath: NSIndexPath) -> NSIndexPath? {
        return NSIndexPath(row: willDeselectRow(indexPath.row), section: indexPath.section)
    }
    
    func didSelectRowAtIndexPath(indexPath: NSIndexPath) {
        didSelectRow(indexPath.row)
    }
    
    func didDeselectRowAtIndexPath(indexPath: NSIndexPath) {
        didDeselectRow(indexPath.row)
    }
    
    func editingStyleForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return editingStyleForRow(indexPath.row)
    }
    
    func titleForDeleteConfirmationButtonForRowAtIndexPath(indexPath: NSIndexPath) -> String? {
        return titleForDeleteConfirmationButtonForRow(indexPath.row)
    }
    
    func editActionsForRowAtIndexPath(indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        return editActionsForRow(indexPath.row)
    }
    
    func shouldIndentWhileEditingRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return shouldIndentWhileEditingRow(indexPath.row)
    }
    
    func willBeginEditingRowAtIndexPath(indexPath: NSIndexPath) {
        willBeginEditingRow(indexPath.row)
    }
    
    func didEndEditingRowAtIndexPath(indexPath: NSIndexPath) {
        didEndEditingRow(indexPath.row)
    }
    
    func targetIndexPathForMoveFromRowAtIndexPath(sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath {
        return NSIndexPath(row: targetRowForMoveFromRow(sourceIndexPath.row, toProposedRow: proposedDestinationIndexPath.row), section: proposedDestinationIndexPath.section)
    }
    
    func indentationLevelForRowAtIndexPath(indexPath: NSIndexPath) -> Int {
        return indentationLevelForRow(indexPath.row)
    }
    
    func shouldShowMenuForRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return shouldShowMenuForRow(indexPath.row)
    }
    
    func canPerformAction(action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return canPerformAction(action, forRow: indexPath.row, withSender: sender)
    }
    
    func performAction(action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
        performAction(action, forRow: indexPath.row, withSender: sender)
    }
    
}


