//
//  Playlist.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/8/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa

class Server: NSObject {

    dynamic var name: String = "web1.example.com"
    
    func isLeaf() -> Bool {
        return true
    }
    
    
}
