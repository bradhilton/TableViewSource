//
//  UITableView+TableViewSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import UIKit

private let sourceKey = UnsafePointer<Void>()

extension UITableView {
    
    weak var source: TableViewSource? {
        get {
            return objc_getAssociatedObject(self, sourceKey) as? TableViewSource
        }
        set {
            if newValue != nil {
                delegate = self
                dataSource = self
            }
            objc_setAssociatedObject(self, sourceKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }
    
}