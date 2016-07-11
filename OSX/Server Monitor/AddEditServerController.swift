//
//  AddEditServerController.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/10/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa

protocol AddEditServerDelegate {
    func setColor(colorName: String);
}

class AddEditServerController: NSViewController {
    
    @IBOutlet weak var cancelButton: NSButton!
    
    var delegate : AddEditServerDelegate! = nil
    
    var Test : String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Test);
        
    }

    // Cancels the sheet and goes back to the server screen.
    @IBAction func cancelView(sender: AnyObject) {
        
        delegate.setColor("This Changed")
        
        self.dismissController(self);
    }

}
