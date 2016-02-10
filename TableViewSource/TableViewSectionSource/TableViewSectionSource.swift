//
//  TableViewSectionSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

protocol TableViewSectionSource : TableViewSource {
    
    weak var interface: TableViewSectionInterface? { get set }
    
    // Data Source
    
    func numberOfRows() -> Int
    func cellForRow(row: Int) -> UITableViewCell
    func titleForHeader() -> String?
    func titleForFooter() -> String?
    func canEditRow(row: Int) -> Bool
    func canMoveRow(row: Int) -> Bool
    func sectionIndexTitle() -> String?
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRow: Int)
    func moveRow(sourceRow: Int, toRow destinationRow: Int)
    
    // Delegate
    
    func willDisplayCell(cell: UITableViewCell, forRow row: Int)
    func willDisplayHeaderView(view: UIView)
    func willDisplayFooterView(view: UIView)
    func didEndDisplayingCell(cell: UITableViewCell, forRow row: Int)
    func didEndDisplayingHeaderView(view: UIView)
    func didEndDisplayingFooterView(view: UIView)
    func heightForRow(row: Int) -> CGFloat
    func heightForHeader() -> CGFloat
    func heightForFooter() -> CGFloat
    func estimatedHeightForRow(row: Int) -> CGFloat
    func estimatedHeightForHeader() -> CGFloat
    func estimatedHeightForFooter() -> CGFloat
    func viewForHeader() -> UIView?
    func viewForFooter() -> UIView?
    func accessoryButtonTappedForRow(row: Int)
    func shouldHighlightRow(row: Int) -> Bool
    func didHighlightRow(row: Int)
    func didUnhighlightRow(row: Int)
    func willSelectRow(row: Int) -> Int?
    func willDeselectRow(row: Int) -> Int?
    func didSelectRow(row: Int)
    func didDeselectRow(row: Int)
    func editingStyleForRow(row: Int) -> UITableViewCellEditingStyle
    func titleForDeleteConfirmationButtonForRow(row: Int) -> String?
    func editActionsForRow(row: Int) -> [UITableViewRowAction]?
    func shouldIndentWhileEditingRow(row: Int) -> Bool
    func willBeginEditingRow(row: Int)
    func didEndEditingRow(row: Int)
    func targetRowForMoveFromRow(sourceRow: Int, toProposedRow proposedDestinationRow: Int) -> Int
    func indentationLevelForRow(row: Int) -> Int
    func shouldShowMenuForRow(row: Int) -> Bool
    func canPerformAction(action: Selector, forRow row: Int, withSender sender: AnyObject?) -> Bool
    func performAction(action: Selector, forRow row: Int, withSender sender: AnyObject?)
    
}