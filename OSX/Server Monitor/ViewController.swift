//
//  ViewController.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/8/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa

//
// Delegate for adding / editing / removing servers to the list.
//
protocol ServersDelegate {
    func addServer(name: String);
}

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource, ServersDelegate {

    @IBOutlet weak var serverTable: NSTableView!

    var servers: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.servers.addObject("web1.example.com")
        self.servers.addObject("web2.example.com")
        self.servers.addObject("web3.example.com")
        self.servers.addObject("web4.example.com")
        self.servers.addObject("web5.example.com")
        
        // Reload the table view data.
        self.serverTable.reloadData()
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }

    //
    //  Returns that number of objects in our table view.
    //
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return self.servers.count
    }
    
    //
    // Call this to display a table row
    //
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        let cellView = tableView.makeViewWithIdentifier("cell", owner: self) as! NSTableCellView
        
        cellView.textField!.stringValue = self.servers.objectAtIndex(row) as! String
        
        return cellView
        
    }

    //
    // Add a new server to the server list.
    //
    func addServer(name: String) {
        
        // Update The 3 row with this.
        self.servers[2] = "Spicer Was HERE - " + name
        
        // Reload the table view data.
        self.serverTable.reloadData()
    }
    
    
}

