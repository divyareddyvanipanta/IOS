//
//  ArticelCellTVC.swift
//  Sec04NewAPIDemo
//
//  Created by chandra on 4/6/22.
//

import UIKit

class ArticelCellTVC: UITableViewCell {
    
    @IBOutlet weak var thumbnailIV: UIImageView!
    
    @IBOutlet weak var titleLBL: UILabel!
    
    @IBOutlet weak var descriptionLBL: UILabel!
    
    @IBOutlet weak var authorLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
