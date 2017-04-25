//
//  HomeMenuBarCell.swift
//  youtubeApp
//
//  Created by mac on 24/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class HomeMenuBarCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    override var isSelected: Bool {
        didSet {
            image.tintColor = isSelected ? UIColor.white : UIColor.darkGray
        }
    }
    
    @IBOutlet var image: UIImageView!
    
}

 
