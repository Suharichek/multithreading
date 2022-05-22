//
//  FeedViewController.swift
//  Navigation
//
//  Created by Suharik on 11.03.2022.
//

import UIKit

class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Лента"
        view.backgroundColor = .white
        view.addSubview(postButton)
    }
    var postButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemIndigo
        button.frame = CGRect(x: 30, y: 740, width: 350, height: 60)
        button.layer.cornerRadius = 12
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.setTitle("Перейти на пост", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = true
        return button
    }()
    
    @objc private func buttonAction() {
        let postViewController = PostViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
}
