//
//  Playlist.swift
//  Server Monitor
//
//  Created by Spicer Matthews on 7/8/16.
//  Copyright © 2016 Cloudmanic Labs, LLC. All rights reserved.
//

import Cocoa

class Playlist: NSObject {

    dynamic var name: String = "New Playlist"
    dynamic var creator: String = "User"
    
    func isLeaf() -> Bool {
        return true
    }
    
    
}
