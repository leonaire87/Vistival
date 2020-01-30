//
//  ArtistTableViewCell.swift
//  Vistival
//
//  Created by mobapp07 on 30/01/2020.
//  Copyright © 2020 mobapp07. All rights reserved.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {
    
    @IBOutlet weak var artistLbl: UILabel!
    @IBOutlet weak var stageLbl: UILabel!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
