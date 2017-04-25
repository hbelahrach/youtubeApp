//
//  HomeBar.swift
//  youtubeApp
//
//  Created by mac on 23/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import UIKit

class HomeMenuBar: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet var cv: UICollectionView!
    let cellId = "cell"
    let imagesNames = ["home", "trending", "subscriptions", "account"]
    
    @IBOutlet var view: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializeView()
        cv.dataSource = self
        cv.delegate = self
        cv.register(UINib(nibName: "HomeMenuBarCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        cv.selectItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, animated: false, scrollPosition: [])
    }
    
    private func initializeView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "HomeMenuBar", bundle: bundle)
        view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeMenuBarCell
        cell.image.image = UIImage(named: imagesNames[indexPath.row])?.withRenderingMode(.alwaysTemplate)
        if(indexPath.row == 0){
            cell.image.tintColor = UIColor.white
        }else{
            cell.image.tintColor = UIColor.darkGray
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width / 4, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
