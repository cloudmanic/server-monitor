//
//  WindowController.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/10/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    }

    //
    // Call this just before we open a new view controller.
    //
    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?) {
        
        let newCont = segue.destinationController as! AddEditServerController
        
        newCont.delegate = self.contentViewController as! ViewController
        
        newCont.Test = "Spicer Rocks"
        
    }
    
}
