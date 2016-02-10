//
//  TableViewRowInterface.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

protocol TableViewRowInterface : TableViewSectionInterface {
    
    func rectForRow(row: TableViewRowSource) -> CGRect
    func row(row: TableViewRowSource, atPoint: CGPoint) -> Bool
    func row(row: TableViewRowSource, hasCell cell: UITableViewCell) -> Bool
    func row(row: TableViewRowSource, inRect rect: CGRect) -> Bool
    func cellForRow(row: TableViewRowSource) -> UITableViewCell?
    func scrollToRow(row: TableViewRowSource, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool)
    
    func insertRow(row: TableViewRowSource, withRowAnimation animation: UITableViewRowAnimation)
    func deleteRow(row: TableViewRowSource, withRowAnimation animation: UITableViewRowAnimation)
    func reloadRow(row: TableViewRowSource, withRowAnimation animation: UITableViewRowAnimation)
    
    func isSelectedRow(row: TableViewRowSource) -> Bool
    
    func selectRow(row: TableViewRowSource?, animated: Bool, scrollPosition: UITableViewScrollPosition)
    func deselectRow(row: TableViewRowSource, animated: Bool, scrollPosition: UITableViewScrollPosition)
    
    func row(row: TableViewRowSource, dequeueReusableCellWithIdentifier identifier: String) -> UITableViewCell
    
}
