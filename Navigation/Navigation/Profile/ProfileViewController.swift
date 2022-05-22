//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Suharik on 11.03.2022.
//

import UIKit
import StorageService

class ProfileViewController: UIViewController, UITableViewDelegate  {
    let posts = Post.createPosts()
    let profileHeaderView = ProfileHeaderView()
    lazy var tableView: UITableView = {
        var myTableView = UITableView()
        myTableView.backgroundColor = .white
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(PostTableViewCell.self, forCellReuseIdentifier: String(describing: PostTableViewCell.self))
        #if DEBUG
        myTableView.backgroundColor = .red
        #else
        myTableView.backgroundColor = .white
        #endif
        return myTableView
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Мой профиль"
        self.profileHeaderView.backgroundColor = .systemGray6
        view.backgroundColor = .systemGray6
        profileHeaderView.statusTextField.delegate = self
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        view.addSubview(profileHeaderView)
        profileHeaderView.setupViews()
        setupLayout()
    }
    
    func setupLayout(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.statusTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            profileHeaderView.avatarImageView.topAnchor.constraint(equalTo: profileHeaderView.topAnchor, constant: 16),
            profileHeaderView.avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            profileHeaderView.setStatusButton.topAnchor.constraint(equalTo: profileHeaderView.avatarImageView.bottomAnchor, constant: 16),
            profileHeaderView.setStatusButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            profileHeaderView.setStatusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            profileHeaderView.setStatusButton.heightAnchor.constraint (equalToConstant: 50),
            
            profileHeaderView.fullNameLabel.topAnchor.constraint(equalTo: profileHeaderView.topAnchor, constant: 27),
            profileHeaderView.fullNameLabel.leadingAnchor.constraint(equalTo: profileHeaderView.centerXAnchor, constant: -47),
            
            profileHeaderView.statusTextField.bottomAnchor.constraint(equalTo: profileHeaderView.setStatusButton.topAnchor, constant: -34),
            profileHeaderView.statusTextField.leadingAnchor.constraint(equalTo: profileHeaderView.centerXAnchor, constant: -47),
            profileHeaderView.statusTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            profileHeaderView.statusTextField.heightAnchor.constraint (equalToConstant: 30),
        ])
    }
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostTableViewCell.self), for: indexPath) as! PostTableViewCell
        cell.setupCell(lenta: posts[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var view = UIView()
        view = profileHeaderView
        return view
    }
}

extension ProfileViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        view.endEditing(true)
        return true
    }
}
