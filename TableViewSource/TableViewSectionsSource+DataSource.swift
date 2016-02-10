//
//  TableViewSectionsSource+DataSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/10/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension TableViewSectionsSource {
    
    func numberOfRowsInSection(section: Int) -> Int {
        return sections[section].numberOfRows()
    }
    
    func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell {
        return sections[indexPath.section].cellForRow(indexPath.row)
    }
    
    func numberOfSections() -> Int {
        return sections.count
    }
    
    func titleForHeaderInSection(section: Int) -> String? {
        return sections[section].titleForHeader()
    }
    
    func titleForFooterInSection(section: Int) -> String? {
        return sections[section].titleForFooter()
    }
    
    func canEditRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].canEditRow(indexPath.row)
    }
    
    func canMoveRowAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].canMoveRow(indexPath.row)
    }
    
    func sectionIndexTitles() -> [String]? {
        let sectionIndexTitles = sections.flatMap { $0.sectionIndexTitle() }
        return sectionIndexTitles.count > 0 ? sectionIndexTitles : nil
    }
    
    func sectionForSectionIndexTitle(title: String, atIndex index: Int) -> Int {
        return (0..<sections.count).flatMap({ sections[$0].sectionIndexTitle() != nil ? $0 : nil })[index]
    }
    
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        sections[indexPath.section].commitEditingStyle(editingStyle, forRow: indexPath.row)
    }
    
    func moveRowAtIndexPath(sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        if sourceIndexPath.section == destinationIndexPath.section {
            sections[sourceIndexPath.section].moveRow(sourceIndexPath.row, toRow: destinationIndexPath.row)
        }
    }
    
}
