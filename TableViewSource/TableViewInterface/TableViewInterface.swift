//
//  TableViewInterface.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

protocol TableViewInterface : class {
    
    var rowHeight: CGFloat { get set }
    var sectionHeaderHeight: CGFloat { get set }
    var sectionFooterHeight: CGFloat { get set }
    var estimatedRowHeight: CGFloat { get set }
    var estimatedSectionHeaderHeight: CGFloat { get set }
    var estimatedSectionFooterHeight: CGFloat { get set }
    var separatorInset: UIEdgeInsets { get set }
    var backgroundView: UIView? { get set }
    
    func reloadData()
    func reloadSectionIndexTitles()
    
    func numberOfSectionsForSource(source: TableViewSource) -> Int
    func source(source: TableViewSource, numberOfRowsInSection section: Int) -> Int
    func source(source: TableViewSource, rectForSection section: Int) -> CGRect
    func source(source: TableViewSource, rectForHeaderInSection section: Int) -> CGRect
    func source(source: TableViewSource, rectForFooterInSection section: Int) -> CGRect
    func source(source: TableViewSource, rectForRowAtIndexPath indexPath: NSIndexPath) -> CGRect
    func source(source: TableViewSource, indexPathForRowAtPoint point: CGPoint) -> NSIndexPath?
    func source(source: TableViewSource, indexPathForCell cell: UITableViewCell) -> NSIndexPath?
    func source(source: TableViewSource, indexPathsForRowsInRect rect: CGRect) -> [NSIndexPath]?
    func source(source: TableViewSource, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell?
    var visibleCells: [UITableViewCell] { get }
    func indexPathsForVisibleRowsForSource(source: TableViewSource) -> [NSIndexPath]?
    func source(source: TableViewSource, headerViewForSection section: Int) -> UITableViewHeaderFooterView?
    func source(source: TableViewSource, footerViewForSection section: Int) -> UITableViewHeaderFooterView?
    func source(source: TableViewSource, scrollToRowAtIndexPath indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool)
    func scrollToNearestSelectedRowAtScrollPosition(scrollPosition: UITableViewScrollPosition, animated: Bool)
    
    func beginUpdates()
    func endUpdates()
    func source(source: TableViewSource, insertSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
    func source(source: TableViewSource, deleteSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
    func source(source: TableViewSource, reloadSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
    func source(source: TableViewSource, moveSection section: Int, toSection newSection: Int)
    func source(source: TableViewSource, insertRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
    func source(source: TableViewSource, deleteRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
    func source(source: TableViewSource, reloadRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
    func source(source: TableViewSource, moveRowAtIndexPath indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
    var editing: Bool { get set }
    func setEditing(editing: Bool, animated: Bool)
    var allowsSelection: Bool { get set }
    var allowsSelectionDuringEditing: Bool { get set }
    var allowsMultipleSelection: Bool { get set }
    var allowsMultipleSelectionDuringEditing: Bool { get set }
    
    func indexPathForSelectedRowForSource(source: TableViewSource) -> NSIndexPath?
    func indexPathsForSelectedRowsForSource(source: TableViewSource) -> [NSIndexPath]?

    func source(source: TableViewSource, selectRowAtIndexPath indexPath: NSIndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition)
    func source(source: TableViewSource, deselectRowAtIndexPath indexPath: NSIndexPath, animated: Bool)
    
    var sectionIndexMinimumDisplayRowCount: Int { get set }
    var sectionIndexColor: UIColor? { get set }
    var sectionIndexBackgroundColor: UIColor? { get set }
    var sectionIndexTrackingBackgroundColor: UIColor? { get set }
    
    var separatorStyle: UITableViewCellSeparatorStyle { get set }
    var separatorColor: UIColor? { get set }
    
    var separatorEffect: UIVisualEffect? { get set }
    
    var tableHeaderView: UIView? { get set }
    var tableFooterView: UIView? { get set }
    
    func dequeueReusableCellWithIdentifier(identifier: String) -> UITableViewCell?
    func source(source: TableViewSource, dequeueReusableCellWithIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell
    func dequeueReusableHeaderFooterViewWithIdentifier(identifier: String) -> UITableViewHeaderFooterView?
    
    func registerNib(nib: UINib?, forCellReuseIdentifier identifier: String)
    func registerClass(cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
    func registerNib(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
    func registerClass(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
    
}
