//
//  ReApi_request.swift
//  MySobrero
//
//  Created by Ettore Luigi Pane on 29/11/2019.
//
//

import Foundation

// needs to work with uid and passwd

struct apiRequest {
    let resourceURL:URL
    let userid = ""
    let passwd = ""
// creating the resource data URL
    init(url:String) {
        let resourceString = "reapistaging.altervista.org/api.php?uname=\(userid)&password=\(passwd)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        self.resourceURL = resourceURL
        
    }
    
}

// creating the resource data URL
