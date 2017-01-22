//
//  MenuVC + CollectionView.swift
//  Eny Hackathon
//
//  Created by Trevin Wisaksana on 1/21/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

extension MenuVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfPresets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCell
        
        let elementItem = listOfPresets[indexPath.row]
        
        // Assigning the app icon to the cell image
        cell.appIcon.image = elementItem.appIcon
        
        return cell
    }
    
}
