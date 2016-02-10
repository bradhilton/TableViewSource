//
//  TableViewSourcesSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

protocol TableViewSourcesSource : TableViewInterfaceSource {
    
    var sources: [TableViewSource] { get set }
    
}

extension TableViewSourcesSource {
    
    func sourceForSection(section: Int) -> TableViewSource? {
        return sourceForIndex(section) { $0 + $1.numberOfSections() }
    }
    
    func sourceForSectionTitleAtIndex(index: Int) -> TableViewSource? {
        return sourceForIndex(index) { $0 + ($1.sectionIndexTitles()?.count ?? 0) }
    }
    
    func sourceForIndex(index: Int, combine: (Int, TableViewSource) -> Int) -> TableViewSource? {
        for i in sources.indices {
            if index < sources[0...i].reduce(0, combine: combine) {
                return self.sources[i]
            }
        }
        return nil
    }
    
    func sectionOffsetForSource(source: TableViewSource) -> Int {
        if let i = sources.indexOf({ $0 === source }) {
            return sources[0..<i].reduce(0) { $0 + $1.numberOfSections() }
        }
        return 0
    }
    
    func indexPathForSource(source: TableViewSource, indexPath: NSIndexPath) -> NSIndexPath {
        return NSIndexPath(forRow: indexPath.row, inSection: indexPath.section - sectionOffsetForSource(source))
    }
    
    func indexPathFromSource(source: TableViewSource, indexPath: NSIndexPath) -> NSIndexPath {
        return NSIndexPath(forRow: indexPath.row, inSection: indexPath.section + sectionOffsetForSource(source))
    }
    
    func sectionForSource(source: TableViewSource, section: Int) -> Int {
        return section - sectionOffsetForSource(source)
    }
    
    func sectionFromSource(source: TableViewSource, section: Int) -> Int {
        return section + sectionOffsetForSource(source)
    }
    
    func delegate<T>(indexPath: NSIndexPath, handler: (TableViewSource, NSIndexPath) -> T?) -> T? {
        guard let source = sourceForSection(indexPath.section) else { return nil }
        return handler(source, indexPathForSource(source, indexPath: indexPath))
    }
    
    func delegate<T>(section: Int, handler: (TableViewSource, Int) -> T?) -> T? {
        guard let source = sourceForSection(section) else { return nil }
        return handler(source, sectionForSource(source, section: section))
    }
    
}

