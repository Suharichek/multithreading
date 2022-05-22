//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Suharik on 04.04.2022.
//

import UIKit
var identifier = "lol"
class PhotosCollectionViewCell: UICollectionViewCell {
   
    override init (frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .blue 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
