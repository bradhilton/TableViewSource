//
//  UITableView+Interface.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

extension UITableView : TableViewInterface {
    
    func numberOfSectionsForSource(source: TableViewSource) -> Int {
        return numberOfSections
    }
    
    func source(source: TableViewSource, numberOfRowsInSection section: Int) -> Int {
        return numberOfRowsInSection(section)
    }
    
    func source(source: TableViewSource, rectForSection section: Int) -> CGRect {
        return rectForSection(section)
    }
    
    func source(source: TableViewSource, rectForHeaderInSection section: Int) -> CGRect {
        return rectForHeaderInSection(section)
    }
    
    func source(source: TableViewSource, rectForFooterInSection section: Int) -> CGRect {
        return rectForFooterInSection(section)
    }
    
    func source(source: TableViewSource, rectForRowAtIndexPath indexPath: NSIndexPath) -> CGRect {
        return rectForRowAtIndexPath(indexPath)
    }
    
    func source(source: TableViewSource, indexPathForRowAtPoint point: CGPoint) -> NSIndexPath? {
        return indexPathForRowAtPoint(point)
    }
    
    func source(source: TableViewSource, indexPathForCell cell: UITableViewCell) -> NSIndexPath? {
        return indexPathForCell(cell)
    }
    
    func source(source: TableViewSource, indexPathsForRowsInRect rect: CGRect) -> [NSIndexPath]? {
        return indexPathsForRowsInRect(rect)
    }
    
    func source(source: TableViewSource, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell? {
        return cellForRowAtIndexPath(indexPath)
    }
    
    func indexPathsForVisibleRowsForSource(source: TableViewSource) -> [NSIndexPath]? {
        return indexPathsForVisibleRows
    }
    
    func source(source: TableViewSource, headerViewForSection section: Int) -> UITableViewHeaderFooterView? {
        return headerViewForSection(section)
    }
    
    func source(source: TableViewSource, footerViewForSection section: Int) -> UITableViewHeaderFooterView? {
        return footerViewForSection(section)
    }
    
    func source(source: TableViewSource, scrollToRowAtIndexPath indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool) {
        scrollToRowAtIndexPath(indexPath, atScrollPosition: scrollPosition, animated: animated)
    }
    
    func source(source: TableViewSource, insertSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation) {
        insertSections(sections, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, deleteSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation) {
        deleteSections(sections, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, reloadSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation) {
        reloadSections(sections, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, moveSection section: Int, toSection newSection: Int) {
        moveSection(section, toSection: newSection)
    }
    
    func source(source: TableViewSource, insertRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation) {
        insertRowsAtIndexPaths(indexPaths, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, deleteRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation) {
        deleteRowsAtIndexPaths(indexPaths, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, reloadRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation) {
        reloadRowsAtIndexPaths(indexPaths, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, moveRowAtIndexPath indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath) {
        moveRowAtIndexPath(indexPath, toIndexPath: newIndexPath)
    }
    
    func indexPathForSelectedRowForSource(source: TableViewSource) -> NSIndexPath? {
        return indexPathForSelectedRow
    }
    
    func indexPathsForSelectedRowsForSource(source: TableViewSource) -> [NSIndexPath]? {
        return indexPathsForSelectedRows
    }
    
    func source(source: TableViewSource, selectRowAtIndexPath indexPath: NSIndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition) {
        selectRowAtIndexPath(indexPath, animated: animated, scrollPosition: scrollPosition)
    }
    
    func source(source: TableViewSource, deselectRowAtIndexPath indexPath: NSIndexPath, animated: Bool) {
        deselectRowAtIndexPath(indexPath, animated: animated)
    }
    
    func source(source: TableViewSource, dequeueReusableCellWithIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath)
    }

    
}