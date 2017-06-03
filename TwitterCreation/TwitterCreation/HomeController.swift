//
//  HomeController.swift
//  TwitterCreation
//
//  Created by Flatiron School on 6/3/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController{
    
    let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .green
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: self.cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:self.cellId, for: indexPath)
        
        cell.backgroundColor = .blue 
        
        return cell
    }


}
