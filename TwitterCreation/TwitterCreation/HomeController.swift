//
//  HomeController.swift
//  TwitterCreation
//
//  Created by Flatiron School on 6/3/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class wordCell: UICollectionViewCell{

    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
    }
    
    let wordLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST TEST TEST"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    func setupViews() {
        backgroundColor = .yellow
        
        addSubview(wordLabel)
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
 
    
    }
    
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}


class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.register(wordCell.self, forCellWithReuseIdentifier: self.cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:self.cellId, for: indexPath)
        
        //cell.backgroundColor = .blue
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }


}
