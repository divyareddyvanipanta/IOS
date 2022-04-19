//
//  DetailArticleVC.swift
//  Sec04NewAPIDemo
//
//  Created by chandra on 4/4/22.
//

import UIKit
import SDWebImage

class DetailArticleVC: UIViewController {
    
    @IBOutlet weak var titleLBL: UILabel!
    
    @IBOutlet weak var contentTextView: UITextView!
    
    @IBOutlet weak var thumbnailIV: UIImageView!
    
    var titleText = ""
    
    var content = ""
    
    var imageUrl = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLBL.text = self.titleText
        self.contentTextView.text = self.content
        self.thumbnailIV.sd_setImage(with: URL(string: self.imageUrl), placeholderImage: UIImage(systemName: "photo"))
    }

}
