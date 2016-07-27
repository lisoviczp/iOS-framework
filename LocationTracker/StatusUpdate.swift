//
//  StatusUpdate.swift
//  LocationTracker
//
//  Created by Phillip Lisovicz on 7/26/16.
//  Copyright © 2016 Phillip Lisovicz. All rights reserved.
//

import UIKit

class StatusUpdate {
    // MARK: Properties
    
    var status: String
    var location: String
    
    
    init?(status: String, location: String) {
        self.status = status
        self.location = location
        
        if status.isEmpty || location.isEmpty {
            return nil
        }
    }
}
