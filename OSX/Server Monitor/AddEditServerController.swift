//
//  AddEditServerController.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/10/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa

class AddEditServerController: NSViewController {
    
    @IBOutlet weak var addButton: NSButton!
    @IBOutlet weak var cancelButton: NSButton!
    @IBOutlet weak var nameField: NSTextField!
    @IBOutlet weak var hostField: NSTextField!
    @IBOutlet weak var sshPort: NSTextField!
    @IBOutlet weak var sshUser: NSTextField!
    @IBOutlet weak var sshPassword: NSTextField!
    
    var server: Server! = Server()
    var delegate : ServersDelegate! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //
    // Add a new server
    //
    @IBAction func addServerClick(sender: AnyObject) {
        
        // Build server object.
        server.name = nameField.stringValue
        server.sshHost = hostField.stringValue
        server.sshPort = sshPort.stringValue
        server.sshUser = sshUser.stringValue
        server.sshPassword = sshPassword.stringValue
        
        // Send this server to the parent window for processing.
        delegate.addServer(server)
        
        // Close window.
        self.dismissController(self);
    }
    

    //
    // Cancels the sheet and goes back to the server screen.
    //
    @IBAction func cancelView(sender: AnyObject) {
        self.dismissController(self);
    }

}
