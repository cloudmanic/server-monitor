//
//  AddEditServerController.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/10/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa

class AddEditServerController: NSViewController {
    
    @IBOutlet weak var cancelButton: NSButton!
    
    var Test : String = "Rocks"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("asdf");
        print(Test);
        
    }

    // Cancels the sheet and goes back to the server screen.
    @IBAction func cancelView(sender: AnyObject) {
        
        self.dismissController(self);
    }

}
