//
//  AcademyTableViewCell.swift
//  MyDinamicTableView
//
//  Created by nuri on 02/12/22.
//

import UIKit

class AcademyTableViewCell: UITableViewCell {

    @IBOutlet var academyLabel: UILabel!
    @IBOutlet var academyImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
