//
//  PhotoFeed.swift
//  UsingPods
//
//  Created by Alex Paul on 1/22/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class PhotoFeed: UIView {
    // photo search bar
    lazy var photoSearchBar: UISearchBar = {
        let searchbar = UISearchBar()
        searchbar.placeholder = "search photos e.g. cafes, tacos"
        return searchbar
    }()
    
    // address search bar
    lazy var addressSearchBar: UISearchBar = {
        let searchbar = UISearchBar()
        searchbar.placeholder = "search location e.g. Soho"
        searchbar.barTintColor = .orange
        return searchbar
    }()
    
    // collection view to show images
    lazy var collectionView: UICollectionView = {
        let cellSpacing: CGFloat = 2.0
        let itemLength: CGFloat = (bounds.width - (cellSpacing * 4)) / 3
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemLength, height: itemLength)
        layout.minimumLineSpacing = cellSpacing
        layout.minimumInteritemSpacing = cellSpacing
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsetsMake(cellSpacing, cellSpacing, cellSpacing, cellSpacing)
        let cv = UICollectionView(frame: bounds, collectionViewLayout: layout)
        cv.register(PhotoCollectionCell.self, forCellWithReuseIdentifier: "PhotoCollectionCell")
        cv.backgroundColor = .blue
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PhotoFeed {
    private func setupViews() {
        backgroundColor = .white
        setupAddressSearchBar()
        setupCollectionView()
    }
    
    private func setupAddressSearchBar() {
        addSubview(addressSearchBar)
        // TODO: use SnapKit to layout constraints
    }
    
    private func setupCollectionView() {
        addSubview(collectionView)
        // TODO: use SnapKit to layout constraints
    }
}
