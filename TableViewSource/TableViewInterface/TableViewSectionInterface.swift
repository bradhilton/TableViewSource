//
//  TableViewSectionInterface.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import Foundation

protocol TableViewSectionInterface : TableViewInterface {
    
    func numberOfRowsForSection(section: TableViewSectionSource) -> Int
    func rectForSection(section: TableViewSectionSource) -> CGRect
    func rectForHeaderInSection(section: TableViewSectionSource) -> CGRect
    func rectForFooterInSection(section: TableViewSectionSource) -> CGRect
    func section(section: TableViewSectionSource, rectForRow row: Int) -> CGRect
    func section(section: TableViewSectionSource, rowAtPoint point: CGPoint) -> Int?
    func section(section: TableViewSectionSource, rowForCell cell: UITableViewCell) -> Int?
    func section(section: TableViewSectionSource, rowsInRect rect: CGRect) -> [Int]?
    func section(section: TableViewSectionSource, cellForRow row: Int) -> UITableViewCell?
    func rowsForVisibleRowsForSection(section: TableViewSectionSource) -> [Int]?
    func headerViewForSection(section: TableViewSectionSource) -> UITableViewHeaderFooterView?
    func footerViewForSection(section: TableViewSectionSource) -> UITableViewHeaderFooterView?
    func section(section: TableViewSectionSource, scrollToRow row: Int, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool)
    
    func insertSection(section: TableViewSectionSource, withRowAnimation animation: UITableViewRowAnimation)
    func deleteSection(section: TableViewSectionSource, withRowAnimation animation: UITableViewRowAnimation)
    func reloadSection(section: TableViewSectionSource, withRowAnimation animation: UITableViewRowAnimation)
    func section(section: TableViewSectionSource, insertRows rows: [Int], withRowAnimation animation: UITableViewRowAnimation)
    func section(section: TableViewSectionSource, deleteRows rows: [Int], withRowAnimation animation: UITableViewRowAnimation)
    func section(section: TableViewSectionSource, reloadRows rows: [Int], withRowAnimation animation: UITableViewRowAnimation)
    func section(section: TableViewSectionSource, moveRow row: Int, toRow newRow: Int)
    
    func selectedRowForSection(section: TableViewSectionSource) -> Int?
    func selectedRowsForSection(section: TableViewSectionSource) -> [Int]?
    
    func section(section: TableViewSectionSource, selectRow row: Int?, animated: Bool, scrollPosition: UITableViewScrollPosition)
    func section(section: TableViewSectionSource, deselectRow row: Int, animated: Bool)
    
    func section(section: TableViewSectionSource, dequeueReusableCellWithIdentifier identifier: String, forRow row: Int) -> UITableViewCell
    
}