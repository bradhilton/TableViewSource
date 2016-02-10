//
//  TableViewSourcesSource+DataSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewSourcesSource {
    
    func numberOfRowsInSection(section: Int) -> Int {
        return delegate(section) { $0.numberOfRowsInSection($1) } ?? 0
    }
    
    func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell {
        return delegate(indexPath) { $0.cellForRowAtIndexPath($1) } ?? UITableViewCell()
    }
    
    func numberOfSections() -> Int {
        return sources.reduce(0) { $0 + $1.numberOfSections() }
    }
    
    func titleForHeaderInSection(section: Int) -> String? {
        return delegate(section) { $0.titleForHeaderInSection($1) }
    }
    
    func titleForFooterInSection(section: Int) -> String? {
        return delegate(section) { $0.titleForFooterInSection($1) }
    }
    
    func canEditRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.canEditRowAtIndexPath($1) } ?? false
    }
    
    func canMoveRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.canMoveRowAtIndexPath($1) } ?? false
    }
    
    func sectionIndexTitles() -> [String]? {
        let sectionIndexTitles = sources.reduce([String]()) {
            $0 + ($1.sectionIndexTitles() ?? [])
        }
        return sectionIndexTitles.count > 0 ? sectionIndexTitles : nil
    }
    
    func sectionForSectionIndexTitle(title: String, atIndex index: Int) -> Int {
        guard let source = sourceForSectionTitleAtIndex(index) else { return 0 }
        return source.sectionForSectionIndexTitle(title, atIndex: index) + sectionOffsetForSource(source)
    }
    
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        delegate(indexPath) { $0.commitEditingStyle(editingStyle, forRowAtIndexPath: $1) }
    }
    
    func moveRowAtIndexPath(sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        if let source = sourceForSection(sourceIndexPath.section) where source === sourceForSection(destinationIndexPath.section) {
            source.moveRowAtIndexPath(indexPathForSource(source, indexPath: sourceIndexPath), toIndexPath: indexPathForSource(source, indexPath: destinationIndexPath))
        }
    }
    
}