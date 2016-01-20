//
//  ServiceTableViewCell.swift
//  ItsGeekTaMe
//
//  Created by Mary Grace Lucas on 1/19/16.
//  Copyright © 2016 NinnyWorks. All rights reserved.
//

import UIKit

class ServiceTableViewCell: UITableViewCell {

    @IBOutlet weak var serviceImageView: UIImageView!
    
    
    @IBOutlet weak var serviceDetailLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
