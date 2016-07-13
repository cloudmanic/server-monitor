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
    func addServer(server: Server);
}

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource, ServersDelegate {

    @IBOutlet weak var serverTable: NSTableView!

    var servers: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Add a server.
//        let server : Server = Server()
//        server.name = "web1.example.com"
//        server.sshHost = "web1.example.com"
//        server.sshPort = "22"
//        server.sshUser = "bob"
//        server.sshPassword = "password"
//        self.servers.addObject(server)
        
        // Reload the table view data.
        //self.serverTable.reloadData()
        
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
        let server = self.servers.objectAtIndex(row) as! Server
        
        cellView.textField!.stringValue = server.name
        
        return cellView
        
    }

    //
    // Add a new server to the server list.
    //
    func addServer(server: Server) {
        
        // Add the server to the list.
        self.servers.addObject(server)
    
        // Reload the table view data.
        self.serverTable.reloadData()
        
    }
    
    
}

