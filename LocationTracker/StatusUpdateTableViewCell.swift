//
//  StatusUpdateTableViewCell.swift
//  LocationTracker
//
//  Created by Phillip Lisovicz on 7/26/16.
//  Copyright © 2016 Phillip Lisovicz. All rights reserved.
//

import UIKit

class StatusUpdateTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
