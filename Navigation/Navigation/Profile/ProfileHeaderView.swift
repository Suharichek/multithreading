//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Suharik on 14.03.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var setStatusButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.setTitle("Показать статус", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var avatarImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ava")
        image.layer.cornerRadius = 60
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var fullNameLabel: UILabel = {
        let name = UILabel()
        name.text = "Сухарик"
        name.font = .boldSystemFont(ofSize: 18)
        name.textColor = .black
        return name
    }()
    
    var statusTextField: UITextField = {
        let text = UITextField()
        text.textColor = .darkGray
        text.backgroundColor = .white
        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20))
        text.leftView = paddingView
        text.leftViewMode = .always
        text.attributedPlaceholder = NSAttributedString.init(string: "Чего-то ждем...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.black.cgColor
        return text
    }()
    
    
    @objc func buttonPressed(){
        if let textLine = statusTextField.text{
            print(textLine)
        }
    }
    
    func setupViews(){
        self.addSubview(setStatusButton)
        self.addSubview(avatarImageView)
        self.addSubview(fullNameLabel)
        self.addSubview(statusTextField)
    }
    
}
