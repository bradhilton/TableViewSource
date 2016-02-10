//
//  UITableView+Delegate.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

extension UITableView : UITableViewDelegate {
    
    public func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        source?.willDisplayCell(cell, forRowAtIndexPath: indexPath)
    }
    
    public func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        source?.willDisplayHeaderView(view, forSection: section)
    }
    
    public func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        source?.willDisplayHeaderView(view, forSection: section)
    }
    
    public func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        source?.didEndDisplayingCell(cell, forRowAtIndexPath: indexPath)
    }
    
    public func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        source?.didEndDisplayingHeaderView(view, forSection: section)
    }
    
    public func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        source?.didEndDisplayingFooterView(view, forSection: section)
    }
    
    public func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return source?.heightForRowAtIndexPath(indexPath) ?? rowHeight
    }
    
    public func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return source?.heightForHeaderInSection(section) ?? sectionHeaderHeight
    }
    
    public func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return source?.heightForFooterInSection(section) ?? sectionFooterHeight
    }

    public func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return source?.estimatedHeightForRowAtIndexPath(indexPath) ?? estimatedRowHeight
    }
    
    public func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return source?.estimatedHeightForHeaderInSection(section) ?? estimatedSectionHeaderHeight
    }
    
    public func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return source?.estimatedHeightForFooterInSection(section) ?? estimatedSectionFooterHeight
    }

    public func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return source?.viewForHeaderInSection(section)
    }
    
    public func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return source?.viewForFooterInSection(section)
    }
    
    public func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        source?.accessoryButtonTappedForRowWithIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return source?.shouldHighlightRowAtIndexPath(indexPath) ?? true
    }
    
    public func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath) {
        source?.didHighlightRowAtIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath) {
        source?.didUnhighlightRowAtIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        if let source = source {
            return source.willSelectRowAtIndexPath(indexPath)
        }
        return indexPath
    }
    
    public func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        if let source = source {
            return source.willDeselectRowAtIndexPath(indexPath)
        }
        return indexPath
    }
    
    public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        source?.didSelectRowAtIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        source?.didDeselectRowAtIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return source?.editingStyleForRowAtIndexPath(indexPath) ?? .None
    }
    
    public func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String? {
        return source?.titleForDeleteConfirmationButtonForRowAtIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        return source?.editActionsForRowAtIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return source?.shouldIndentWhileEditingRowAtIndexPath(indexPath) ?? true
    }
    
    public func tableView(tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: NSIndexPath) {
        source?.willBeginEditingRowAtIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath) {
        source?.didEndEditingRowAtIndexPath(indexPath)
    }
    
    public func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath {
        return source?.targetIndexPathForMoveFromRowAtIndexPath(sourceIndexPath, toProposedIndexPath: proposedDestinationIndexPath) ?? sourceIndexPath
    }
    
    public func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int {
        return source?.indentationLevelForRowAtIndexPath(indexPath) ?? 15
    }
    
    public func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return source?.shouldShowMenuForRowAtIndexPath(indexPath) ?? false
    }
    
    public func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return source?.canPerformAction(action, forRowAtIndexPath: indexPath, withSender: sender) ?? false
    }
    
    public func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
        source?.performAction(action, forRowAtIndexPath: indexPath, withSender: sender)
    }
    
}
