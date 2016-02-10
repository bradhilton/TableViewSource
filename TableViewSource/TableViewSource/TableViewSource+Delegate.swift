//
//  TableViewSource+Delegate.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

extension TableViewSource {
    
    func willDisplayCell(cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {}
    func willDisplayHeaderView(view: UIView, forSection section: Int) {}
    func willDisplayFooterView(view: UIView, forSection section: Int) {}
    func didEndDisplayingCell(cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {}
    func didEndDisplayingHeaderView(view: UIView, forSection section: Int) {}
    func didEndDisplayingFooterView(view: UIView, forSection section: Int) {}
    
    func heightForRowAtIndexPath(indexPath: NSIndexPath) -> CGFloat {
        return _interface.rowHeight
    }
    
    func heightForHeaderInSection(section: Int) -> CGFloat {
        return _interface.sectionHeaderHeight
    }
    
    func heightForFooterInSection(section: Int) -> CGFloat {
        return _interface.sectionFooterHeight
    }
    
    func estimatedHeightForRowAtIndexPath(indexPath: NSIndexPath) -> CGFloat {
        return _interface.estimatedRowHeight
    }
    
    func estimatedHeightForHeaderInSection(section: Int) -> CGFloat {
        return _interface.estimatedSectionHeaderHeight
    }
    
    func estimatedHeightForFooterInSection(section: Int) -> CGFloat {
        return _interface.estimatedSectionFooterHeight
    }
    
    func viewForHeaderInSection(section: Int) -> UIView? {
        return nil
    }
    
    func viewForFooterInSection(section: Int) -> UIView? {
        return nil
    }
    
    func accessoryButtonTappedForRowWithIndexPath(indexPath: NSIndexPath) {}
    
    func shouldHighlightRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func didHighlightRowAtIndexPath(indexPath: NSIndexPath) {}
    func didUnhighlightRowAtIndexPath(indexPath: NSIndexPath) {}
    
    func willSelectRowAtIndexPath(indexPath: NSIndexPath) -> NSIndexPath? {
        return indexPath
    }
    
    func willDeselectRowAtIndexPath(indexPath: NSIndexPath) -> NSIndexPath? {
        return indexPath
    }
    
    func didSelectRowAtIndexPath(indexPath: NSIndexPath) {}
    func didDeselectRowAtIndexPath(indexPath: NSIndexPath) {}
    
    func editingStyleForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return .None
    }
    
    func titleForDeleteConfirmationButtonForRowAtIndexPath(indexPath: NSIndexPath) -> String? {
        return nil
    }
    
    func editActionsForRowAtIndexPath(indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        return nil
    }
    
    func shouldIndentWhileEditingRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func willBeginEditingRowAtIndexPath(indexPath: NSIndexPath) {}
    func didEndEditingRowAtIndexPath(indexPath: NSIndexPath) {}
    
    func targetIndexPathForMoveFromRowAtIndexPath(sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath {
        return sourceIndexPath
    }
    
    func indentationLevelForRowAtIndexPath(indexPath: NSIndexPath) -> Int {
        return 15
    }
    
    func shouldShowMenuForRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return false
    }
    
    func canPerformAction(action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }
    
    func performAction(action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {}
    
}
