//
//  ViewController.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/8/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSOutlineViewDataSource, NSOutlineViewDelegate {
    
    @IBOutlet var treeController: NSTreeController!
    @IBOutlet weak var outlineView: NSOutlineView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addData()
        
        // Start with all the headers expanded
        outlineView.expandItem(nil, expandChildren: true)
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    // OutlineView Data to get started.
    func addData() {
        
        let root = [
            "name": "Servers",
            "isLeaf": false
        ]
        
        let dict: NSMutableDictionary = NSMutableDictionary (dictionary: root)
        dict.setObject([ Server(), Server(), Server(), Server() ], forKey: "children")
        treeController.addObject(dict)
        treeController.addObject(dict)
        treeController.addObject(dict)
    }
    
    // Mark: - Helpers
    func isHeader(item: AnyObject) -> Bool {
        
        if let item = item as? NSTreeNode {
            return !(item.representedObject is Server)
        } else {
            return !(item is Server)
        }
        
    }
    
    // Mark: Delegate
    func outlineView(outlineView: NSOutlineView, viewForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> NSView? {
        
        if isHeader(item) {
            return outlineView.makeViewWithIdentifier("HeaderCell", owner: self)
        } else {
            return outlineView.makeViewWithIdentifier("DataCell", owner: self)
        }
        
    }


}

