//
//  ViewController.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/8/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa
import Foundation

//
// Delegate for adding / editing / removing servers to the list.
//
protocol ServersDelegate {
    func addServer(server: Server);
}

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource, ServersDelegate {

    @IBOutlet weak var serverTable: NSTableView!

    var servers: NSMutableArray! = NSMutableArray()
    
    var timer: dispatch_source_t!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        // Run in a new thread every 2 seconds.
//        timer = Dispatch.timerAsync(interval: 2) {
//            
//            var response : String = ""
//            let host = ""
//            let username = ""
//            let password = ""
//            let session = NMSSHSession(host: host, andUsername: username)
//            
//            session.connect()
//            
//            if(session.connected == true)
//            {
//                session.authenticateByPassword(password)
//                
//                if(session.authorized == true)
//                {
//                    do {
//                        response = try session.channel.execute("df -h | grep root | awk '{ print $5 }'")
//                        print(response)
//                    } catch {
//                        //error.memory = error1
//                        print("SSH: Error running command.")
//                    }
//                }
//            
//                session.disconnect()
//            }
//            
//        }
        
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

