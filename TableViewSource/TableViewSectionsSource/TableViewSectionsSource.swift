//
//  TableViewSectionsSource.swift
//  TableViewSource
//
//  Created by Bradley Hilton on 2/10/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

protocol TableViewSectionsSource : TableViewInterfaceSource {
    
    var sections: [TableViewSectionSource] { get set }
    
}
