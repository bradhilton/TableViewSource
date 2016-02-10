//
//  NSIndexPath+Extensions.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension NSIndexPath {
    
    convenience init(row: Int, section: Int) {
        self.init(forRow: row, inSection: section)
    }
    
    convenience init?(row: Int?, section: Int) {
        guard let row = row else { return nil }
        self.init(row: row, section: section)
    }
    
}
