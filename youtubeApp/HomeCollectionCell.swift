//
//  HomeCollectionCell.swift
//  youtubeApp
//
//  Created by mac on 23/03/2017.
//  Copyright © 2017 mac. All rights reserved.
//


import UIKit

class HomeCollectionCell: UICollectionViewCell {
    
    @IBOutlet var profileImg: UIImageView!
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var descriptionTV: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupImages()
        setLabels()
    }
        
    func setupImages(){
        profileImg.layer.cornerRadius = profileImg.frame.height / 2
        profileImg.layer.masksToBounds = true
    }
    
    func setLabels(){
        titleLbl.text = "Taylor swift - Blank Space"
        descriptionTV.text = "TaylorSwiftVevo • 16.545454545  views • 2 years ago"
        descriptionTV.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        
    }
}

