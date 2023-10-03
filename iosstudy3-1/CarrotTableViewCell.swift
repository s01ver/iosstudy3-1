//
//  CarrotTableViewCell.swift
//  iosstudy3-1
//
//
//

import UIKit

class CarrotTableViewCell: UITableViewCell {

    @IBOutlet var carrotImage: UIImageView!
    @IBOutlet var carrotTitle: UILabel!
    @IBOutlet var carrotAddress: UILabel!
    @IBOutlet var carrotPrice: UILabel!
    @IBOutlet var carrotComment: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
