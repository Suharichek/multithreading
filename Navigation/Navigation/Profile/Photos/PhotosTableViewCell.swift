//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Suharik on 04.04.2022.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    var postTableViewCell = PostTableViewCell()
    
    private let photoTitle: UILabel = {
        var title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 24)
        title.textColor = .black
        title.text = "Photos"
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private let firstPhoto: UIImageView = {
        var photoImageView = UIImageView()
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.contentMode = .scaleAspectFit
        photoImageView.image = UIImage(named: "Finn")
        photoImageView.backgroundColor = .black
        return photoImageView
    }()
    
    private let secondPhoto: UIImageView = {
        var photoImageView = UIImageView()
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.contentMode = .scaleAspectFit
        photoImageView.image = UIImage(named: "Jake")
        photoImageView.backgroundColor = .black
        return photoImageView
    }()
    
    private let thirdPhoto: UIImageView = {
        var photoImageView = UIImageView()
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.contentMode = .scaleAspectFit
        photoImageView.image = UIImage(named: "Princess")
        photoImageView.backgroundColor = .black
        return photoImageView
    }()
    
    private let fourthPhoto: UIImageView = {
        var photoImageView = UIImageView()
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.contentMode = .scaleAspectFit
        photoImageView.image = UIImage(named: "BMO")
        photoImageView.backgroundColor = .black
        return photoImageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupContent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupContent(){
        [photoTitle, firstPhoto, secondPhoto, thirdPhoto, fourthPhoto].forEach {postTableViewCell.contentView.addSubview($0)}
        NSLayoutConstraint.activate([
            photoTitle.topAnchor.constraint(equalTo: postTableViewCell.contentView.topAnchor, constant: 12),
            photoTitle.leadingAnchor.constraint(equalTo: postTableViewCell.contentView.leadingAnchor, constant: 12),
            photoTitle.bottomAnchor.constraint(equalTo: postTableViewCell.postAuthor.topAnchor, constant: -12)
        ])
            

}
}
