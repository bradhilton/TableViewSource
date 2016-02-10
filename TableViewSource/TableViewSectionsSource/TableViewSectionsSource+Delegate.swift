//
//  TableViewSectionsSource+Delegate.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/10/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewSectionsSource {
    
    func willDisplayCell(cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        sections[indexPath.section].willDisplayCell(cell, forRow: indexPath.row)
    }
    
    func willDisplayHeaderView(view: UIView, forSection section: Int) {
        sections[section].willDisplayHeaderView(view)
    }
    
    func willDisplayFooterView(view: UIView, forSection section: Int) {
        sections[section].willDisplayFooterView(view)
    }
    
    func didEndDisplayingCell(cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        sections[indexPath.section].didEndDisplayingCell(cell, forRow: indexPath.row)
    }
    
    func didEndDisplayingHeaderView(view: UIView, forSection section: Int) {
        sections[section].didEndDisplayingHeaderView(view)
    }
    
    func didEndDisplayingFooterView(view: UIView, forSection section: Int) {
        sections[section].didEndDisplayingFooterView(view)
    }
    
    func heightForRowAtIndexPath(indexPath: NSIndexPath) -> CGFloat {
        return sections[indexPath.section].heightForRow(indexPath.row)
    }
    
    func heightForHeaderInSection(section: Int) -> CGFloat {
        return sections[section].heightForHeader()
    }
    
    func heightForFooterInSection(section: Int) -> CGFloat {
        return sections[section].heightForFooter()
    }
    
    func estimatedHeightForRowAtIndexPath(indexPath: NSIndexPath) -> CGFloat {
        return sections[indexPath.section].estimatedHeightForRow(indexPath.row)
    }
    
    func estimatedHeightForHeaderInSection(section: Int) -> CGFloat {
        return sections[section].estimatedHeightForHeader()
    }
    
    func estimatedHeightForFooterInSection(section: Int) -> CGFloat {
        return sections[section].estimatedHeightForFooter()
    }
    
    func viewForHeaderInSection(section: Int) -> UIView? {
        return sections[section].viewForHeader()
    }
    
    func viewForFooterInSection(section: Int) -> UIView? {
        return sections[section].viewForFooter()
    }
    
    func accessoryButtonTappedForRowWithIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].accessoryButtonTappedForRow(indexPath.row)
    }
    
    func shouldHighlightRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].shouldHighlightRow(indexPath.row)
    }
    
    func didHighlightRowAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didHighlightRow(indexPath.row)
    }
    
    func didUnhighlightRowAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didUnhighlightRow(indexPath.row)
    }
    
    func willSelectRowAtIndexPath(indexPath: NSIndexPath) -> NSIndexPath? {
        return NSIndexPath(row: sections[indexPath.section].willSelectRow(indexPath.row), section: indexPath.section)
    }
    
    func willDeselectRowAtIndexPath(indexPath: NSIndexPath) -> NSIndexPath? {
        return NSIndexPath(row: sections[indexPath.section].willDeselectRow(indexPath.row), section: indexPath.section)
    }
    
    func didSelectRowAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didSelectRow(indexPath.row)
    }
    
    func didDeselectRowAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didDeselectRow(indexPath.row)
    }
    
    func editingStyleForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return sections[indexPath.section].editingStyleForRow(indexPath.row)
    }
    
    func titleForDeleteConfirmationButtonForRowAtIndexPath(indexPath: NSIndexPath) -> String? {
        return sections[indexPath.section].titleForDeleteConfirmationButtonForRow(indexPath.row)
    }
    
    func editActionsForRowAtIndexPath(indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        return sections[indexPath.section].editActionsForRow(indexPath.row)
    }
    
    func shouldIndentWhileEditingRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].shouldIndentWhileEditingRow(indexPath.row)
    }
    
    func willBeginEditingRowAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].willBeginEditingRow(indexPath.row)
    }
    
    func didEndEditingRowAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didEndEditingRow(indexPath.row)
    }
    
    func targetIndexPathForMoveFromRowAtIndexPath(sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath {
        guard sourceIndexPath.section == proposedDestinationIndexPath.section else { return sourceIndexPath }
        return NSIndexPath(row: sections[sourceIndexPath.section].targetRowForMoveFromRow(sourceIndexPath.row, toProposedRow: proposedDestinationIndexPath.row), section: sourceIndexPath.section)
    }
    
    func indentationLevelForRowAtIndexPath(indexPath: NSIndexPath) -> Int {
        return sections[indexPath.section].indentationLevelForRow(indexPath.row)
    }
    
    func shouldShowMenuForRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].shouldShowMenuForRow(indexPath.row)
    }
    
    func canPerformAction(action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return sections[indexPath.section].canPerformAction(action, forRow: indexPath.row, withSender: sender)
    }
    
    func performAction(action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
        return sections[indexPath.section].performAction(action, forRow: indexPath.row, withSender: sender)
    }
    
}
