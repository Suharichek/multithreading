//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Suharik on 04.04.2022.
//

import UIKit



class PhotosViewController: UIViewController {
    
    private var photosArray: [Int]{
        var array = [Int]()
        for element in 0...19 {
            array.append(element)
        }
        return array
    }
    
    lazy var photoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        var photoView = UICollectionView(frame: .zero, collectionViewLayout: layout )
        photoView.translatesAutoresizingMaskIntoConstraints = false
        photoView.backgroundColor = .orange
        photoView.delegate = self
        photoView.dataSource = self
        photoView.register(PhotosTableViewCell.self, forCellWithReuseIdentifier: String(describing: identifier))
        return photoView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
    }
    
    private func setupCollection() {
        [photoCollectionView].forEach {view.addSubview($0)}
        NSLayoutConstraint.activate([
            photoCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide .topAnchor),
            photoCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            photoCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            photoCollectionView .bottomAnchor.constraint(equalTo: view.bottomAnchor),
            photoCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])}
}

extension PhotosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photosArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! PhotosCollectionViewCell
        return cell
    }
    
    
}

extension PhotosViewController: UICollectionViewDelegate {
    
}
