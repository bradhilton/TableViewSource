//
//  TableViewSourcesSource+Delegate.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewSourcesSource {
    
    func willDisplayCell(cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        delegate(indexPath) { $0.willDisplayCell(cell, forRowAtIndexPath: $1) }
    }
    
    func willDisplayHeaderView(view: UIView, forSection section: Int) {
        delegate(section) { $0.willDisplayHeaderView(view, forSection: $1) }
    }
    
    func willDisplayFooterView(view: UIView, forSection section: Int) {
        delegate(section) { $0.willDisplayFooterView(view, forSection: $1) }
    }
    
    func didEndDisplayingCell(cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didEndDisplayingCell(cell, forRowAtIndexPath: $1) }
    }
    
    func didEndDisplayingHeaderView(view: UIView, forSection section: Int) {
        delegate(section) { $0.didEndDisplayingHeaderView(view, forSection: $1) }
    }
    
    func didEndDisplayingFooterView(view: UIView, forSection section: Int) {
        delegate(section) { $0.didEndDisplayingFooterView(view, forSection: $1) }
    }
    
    func heightForRowAtIndexPath(indexPath: NSIndexPath) -> CGFloat {
        return delegate(indexPath) { $0.heightForRowAtIndexPath($1) } ?? _interface.rowHeight
    }
    
    func heightForHeaderInSection(section: Int) -> CGFloat {
        return delegate(section) { $0.heightForHeaderInSection($1) } ?? _interface.sectionHeaderHeight
    }
    
    func heightForFooterInSection(section: Int) -> CGFloat {
        return delegate(section) { $0.heightForFooterInSection($1) } ?? _interface.sectionFooterHeight
    }
    
    func estimatedHeightForRowAtIndexPath(indexPath: NSIndexPath) -> CGFloat {
        return delegate(indexPath) { $0.estimatedHeightForRowAtIndexPath($1) } ?? _interface.estimatedRowHeight
    }
    
    func estimatedHeightForHeaderInSection(section: Int) -> CGFloat {
        return delegate(section) { $0.estimatedHeightForHeaderInSection($1) } ?? _interface.estimatedSectionHeaderHeight
    }
    
    func estimatedHeightForFooterInSection(section: Int) -> CGFloat {
        return delegate(section) { $0.estimatedHeightForFooterInSection($1) } ?? _interface.estimatedSectionFooterHeight
    }
    
    func viewForHeaderInSection(section: Int) -> UIView? {
        return delegate(section) { $0.viewForHeaderInSection($1) }
    }
    
    func viewForFooterInSection(section: Int) -> UIView? {
        return delegate(section) { $0.viewForFooterInSection($1) }
    }
    
    func accessoryButtonTappedForRowWithIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.accessoryButtonTappedForRowWithIndexPath($1) }
    }
    
    func shouldHighlightRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldHighlightRowAtIndexPath($1) } ?? true
    }
    
    func didHighlightRowAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didHighlightRowAtIndexPath($1) }
    }
    
    func didUnhighlightRowAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didUnhighlightRowAtIndexPath($1) }
    }
    
    func willSelectRowAtIndexPath(indexPath: NSIndexPath) -> NSIndexPath? {
        return delegate(indexPath) { $0.willSelectRowAtIndexPath($1) } ?? indexPath
    }
    
    func willDeselectRowAtIndexPath(indexPath: NSIndexPath) -> NSIndexPath? {
        return delegate(indexPath) { $0.willDeselectRowAtIndexPath($1) } ?? indexPath
    }
    
    func didSelectRowAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didSelectRowAtIndexPath($1) }
    }
    
    func didDeselectRowAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didDeselectRowAtIndexPath($1) }
    }
    
    func editingStyleForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return delegate(indexPath) { $0.editingStyleForRowAtIndexPath($1) } ?? .None
    }
    
    func titleForDeleteConfirmationButtonForRowAtIndexPath(indexPath: NSIndexPath) -> String? {
        return delegate(indexPath) { $0.titleForDeleteConfirmationButtonForRowAtIndexPath($1) }
    }
    
    func editActionsForRowAtIndexPath(indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        return delegate(indexPath) { $0.editActionsForRowAtIndexPath($1) }
    }
    
    func shouldIndentWhileEditingRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldIndentWhileEditingRowAtIndexPath($1) } ?? true
    }
    
    func willBeginEditingRowAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.willBeginEditingRowAtIndexPath($1) }
    }
    
    func didEndEditingRowAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didEndEditingRowAtIndexPath($1) }
    }
    
    func targetIndexPathForMoveFromRowAtIndexPath(sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath {
        guard let source = sourceForSection(sourceIndexPath.section) where source === sourceForSection(proposedDestinationIndexPath.section) else { return sourceIndexPath }
        return indexPathFromSource(source,
            indexPath: source.targetIndexPathForMoveFromRowAtIndexPath(indexPathForSource(source, indexPath: sourceIndexPath), toProposedIndexPath: indexPathForSource(source, indexPath: proposedDestinationIndexPath)))
    }
    
    func indentationLevelForRowAtIndexPath(indexPath: NSIndexPath) -> Int {
        return delegate(indexPath) { $0.indentationLevelForRowAtIndexPath($1) } ?? 15
    }
    
    func shouldShowMenuForRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldShowMenuForRowAtIndexPath($1) } ?? false
    }
    
    func canPerformAction(action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return delegate(indexPath) { $0.canPerformAction(action, forRowAtIndexPath: $1, withSender: sender) } ?? false
    }
    
    func performAction(action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
        delegate(indexPath) { $0.performAction(action, forRowAtIndexPath: $1, withSender: sender) }
    }
    
}
