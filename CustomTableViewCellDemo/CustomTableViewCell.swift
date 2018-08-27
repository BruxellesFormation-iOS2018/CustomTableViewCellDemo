//
//  CustomTableViewCell.swift
//  CustomTableViewCellDemo
//
//  Created by Florian Praile on 27/08/2018.
//  Copyright © 2018 Underside. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var demoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
