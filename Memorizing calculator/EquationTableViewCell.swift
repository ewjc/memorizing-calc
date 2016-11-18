//
//  EquationTableViewCell.swift
//  Memorizing calculator
//
//  Created by Eric Wong on 11/17/16.
//  Copyright © 2016 Make-Stars. All rights reserved.
//

import UIKit

class EquationTableViewCell: UITableViewCell {
    @IBOutlet weak var completeEquationLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
