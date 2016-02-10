//
//  TableViewInterfaceSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

let defaultTableView = UITableView()

protocol TableViewInterfaceSource : TableViewSource, TableViewInterface {}

extension TableViewInterfaceSource {
    
    var rowHeight: CGFloat {
        get {
            return _interface.rowHeight
        }
        set {
            interface?.rowHeight = newValue
        }
    }
    
    var sectionHeaderHeight: CGFloat {
        get {
            return _interface.sectionHeaderHeight
        }
        set {
            interface?.sectionHeaderHeight = newValue
        }
    }
    
    var sectionFooterHeight: CGFloat {
        get {
            return _interface.sectionFooterHeight
        }
        set {
            interface?.sectionFooterHeight = newValue
        }
    }
    
    var estimatedRowHeight: CGFloat {
        get {
            return _interface.estimatedRowHeight
        }
        set {
            interface?.estimatedRowHeight = newValue
        }
    }
    
    var estimatedSectionHeaderHeight: CGFloat {
        get {
            return _interface.estimatedSectionHeaderHeight
        }
        set {
            interface?.estimatedSectionHeaderHeight = newValue
        }
    }
    
    var estimatedSectionFooterHeight: CGFloat {
        get {
            return _interface.estimatedSectionFooterHeight
        }
        set {
            interface?.estimatedSectionFooterHeight = newValue
        }
    }
    
    var separatorInset: UIEdgeInsets {
        get {
            return _interface.separatorInset
        }
        set {
            interface?.separatorInset = newValue
        }
    }
    
    var backgroundView: UIView? {
        get {
            return interface?.backgroundView
        }
        set {
            interface?.backgroundView = newValue
        }
    }
    
    func reloadData() {
        interface?.reloadData()
    }
    
    func reloadSectionIndexTitles() {
        interface?.reloadSectionIndexTitles()
    }

    func numberOfSectionsForSource(source: TableViewSource) -> Int {
        return _interface.numberOfSectionsForSource(source)
    }
    
    func source(source: TableViewSource, numberOfRowsInSection section: Int) -> Int {
        return _interface.source(source, numberOfRowsInSection: section)
    }
    
    func source(source: TableViewSource, rectForSection section: Int) -> CGRect {
        return _interface.source(source, rectForSection: section)
    }
    
    func source(source: TableViewSource, rectForHeaderInSection section: Int) -> CGRect {
        return _interface.source(source, rectForHeaderInSection: section)
    }
    
    func source(source: TableViewSource, rectForFooterInSection section: Int) -> CGRect {
        return _interface.source(source, rectForFooterInSection: section)
    }
    
    func source(source: TableViewSource, rectForRowAtIndexPath indexPath: NSIndexPath) -> CGRect {
        return _interface.source(source, rectForRowAtIndexPath: indexPath)
    }
    
    func source(source: TableViewSource, indexPathForRowAtPoint point: CGPoint) -> NSIndexPath? {
        return interface?.source(source, indexPathForRowAtPoint: point)
    }
    
    func source(source: TableViewSource, indexPathForCell cell: UITableViewCell) -> NSIndexPath? {
        return interface?.source(source, indexPathForCell: cell)
    }
    
    func source(source: TableViewSource, indexPathsForRowsInRect rect: CGRect) -> [NSIndexPath]? {
        return interface?.source(source, indexPathsForRowsInRect: rect)
    }
    
    func source(source: TableViewSource, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell? {
        return interface?.source(source, cellForRowAtIndexPath: indexPath)
    }
    
    var visibleCells: [UITableViewCell] {
        return _interface.visibleCells
    }
    
    func indexPathsForVisibleRowsForSource(source: TableViewSource) -> [NSIndexPath]? {
        return interface?.indexPathsForVisibleRowsForSource(source)
    }
    
    func source(source: TableViewSource, headerViewForSection section: Int) -> UITableViewHeaderFooterView? {
        return interface?.source(source, headerViewForSection: section)
    }
    
    func source(source: TableViewSource, footerViewForSection section: Int) -> UITableViewHeaderFooterView? {
        return interface?.source(source, footerViewForSection: section)
    }
    
    func source(source: TableViewSource, scrollToRowAtIndexPath indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool) {
        interface?.source(source, scrollToRowAtIndexPath: indexPath, atScrollPosition: scrollPosition, animated: animated)
    }
    
    func scrollToNearestSelectedRowAtScrollPosition(scrollPosition: UITableViewScrollPosition, animated: Bool) {
        interface?.scrollToNearestSelectedRowAtScrollPosition(scrollPosition, animated: animated)
    }
    
    func beginUpdates() {
        interface?.beginUpdates()
    }
    
    func endUpdates() {
        interface?.endUpdates()
    }
    
    func source(source: TableViewSource, insertSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation) {
        interface?.source(source, insertSections: sections, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, deleteSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation) {
        interface?.source(source, deleteSections: sections, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, reloadSections sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation) {
        interface?.source(source, reloadSections: sections, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, moveSection section: Int, toSection newSection: Int) {
        interface?.source(source, moveSection: section, toSection: newSection)
    }
    
    func source(source: TableViewSource, insertRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation) {
        interface?.source(source, insertRowsAtIndexPaths: indexPaths, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, deleteRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation) {
        interface?.source(source, deleteRowsAtIndexPaths: indexPaths, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, reloadRowsAtIndexPaths indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation) {
        interface?.source(source, reloadRowsAtIndexPaths: indexPaths, withRowAnimation: animation)
    }
    
    func source(source: TableViewSource, moveRowAtIndexPath indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath) {
        interface?.source(source, moveRowAtIndexPath: indexPath, toIndexPath: newIndexPath)
    }
    
    var editing: Bool {
        get {
            return _interface.editing
        }
        set {
            interface?.editing = newValue
        }
    }
    
    func setEditing(editing: Bool, animated: Bool) {
        interface?.setEditing(editing, animated: animated)
    }
    
    var allowsSelection: Bool {
        get {
            return _interface.allowsSelection
        }
        set {
            interface?.allowsSelection = newValue
        }
    }
    
    var allowsSelectionDuringEditing: Bool {
        get {
            return _interface.allowsSelectionDuringEditing
        }
        set {
            interface?.allowsSelectionDuringEditing = newValue
        }
    }
    
    var allowsMultipleSelection: Bool {
        get {
            return _interface.allowsMultipleSelection
        }
        set {
            interface?.allowsMultipleSelection = newValue
        }
    }
    
    var allowsMultipleSelectionDuringEditing: Bool {
        get {
            return _interface.allowsMultipleSelectionDuringEditing
        }
        set {
            interface?.allowsMultipleSelectionDuringEditing = newValue
        }
    }
    

    func indexPathForSelectedRowForSource(source: TableViewSource) -> NSIndexPath? {
        return interface?.indexPathForSelectedRowForSource(source)
    }
    
    func indexPathsForSelectedRowsForSource(source: TableViewSource) -> [NSIndexPath]? {
        return interface?.indexPathsForSelectedRowsForSource(source)
    }

    func source(source: TableViewSource, selectRowAtIndexPath indexPath: NSIndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition) {
        interface?.source(source, selectRowAtIndexPath: indexPath, animated: animated, scrollPosition: scrollPosition)
    }
    
    func source(source: TableViewSource, deselectRowAtIndexPath indexPath: NSIndexPath, animated: Bool) {
        interface?.source(source, deselectRowAtIndexPath: indexPath, animated: animated)
    }
    
    var sectionIndexMinimumDisplayRowCount: Int {
        get {
            return _interface.sectionIndexMinimumDisplayRowCount
        }
        set {
            interface?.sectionIndexMinimumDisplayRowCount = newValue
        }
    }
    
    var sectionIndexColor: UIColor? {
        get {
            return interface?.sectionIndexColor
        }
        set {
            interface?.sectionIndexColor = newValue
        }
    }
    
    var sectionIndexBackgroundColor: UIColor? {
        get {
            return interface?.sectionIndexBackgroundColor
        }
        set {
            interface?.sectionIndexBackgroundColor = newValue
        }
    }
    
    var sectionIndexTrackingBackgroundColor: UIColor? {
        get {
            return interface?.sectionIndexTrackingBackgroundColor
        }
        set {
            interface?.sectionIndexTrackingBackgroundColor = newValue
        }
    }

    var separatorStyle: UITableViewCellSeparatorStyle {
        get {
            return _interface.separatorStyle
        }
        set {
            interface?.separatorStyle = newValue
        }
    }
    var separatorColor: UIColor? {
        get {
            return interface?.separatorColor
        }
        set {
            interface?.separatorColor = newValue
        }
    }
    
    var separatorEffect: UIVisualEffect? {
        get {
            return interface?.separatorEffect
        }
        set {
            interface?.separatorEffect = newValue
        }
    }
    
    var tableHeaderView: UIView? {
        get {
            return interface?.tableHeaderView
        }
        set {
            interface?.tableHeaderView = newValue
        }
    }
    
    var tableFooterView: UIView? {
        get {
            return interface?.tableFooterView
        }
        set {
            interface?.tableFooterView = newValue
        }
    }
    
    func dequeueReusableCellWithIdentifier(identifier: String) -> UITableViewCell? {
        return interface?.dequeueReusableCellWithIdentifier(identifier)
    }
    
    func source(source: TableViewSource, dequeueReusableCellWithIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return _interface.source(source, dequeueReusableCellWithIdentifier: identifier, forIndexPath: indexPath)
    }
    
    func dequeueReusableHeaderFooterViewWithIdentifier(identifier: String) -> UITableViewHeaderFooterView? {
        return interface?.dequeueReusableHeaderFooterViewWithIdentifier(identifier)
    }
    
    func registerNib(nib: UINib?, forCellReuseIdentifier identifier: String) {
        interface?.registerNib(nib, forCellReuseIdentifier: identifier)
    }
    
    func registerClass(cellClass: AnyClass?, forCellReuseIdentifier identifier: String) {
        interface?.registerClass(cellClass, forCellReuseIdentifier: identifier)
    }
    
    func registerNib(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) {
        interface?.registerNib(nib, forHeaderFooterViewReuseIdentifier: identifier)
    }
    
    func registerClass(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String) {
        interface?.registerClass(aClass, forHeaderFooterViewReuseIdentifier: identifier)
    }
    
}
