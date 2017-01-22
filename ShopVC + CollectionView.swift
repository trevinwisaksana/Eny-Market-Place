//
//  ShopVC + CollectionView.swift
//  Eny Hackathon
//
//  Created by Trevin Wisaksana on 1/21/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

extension ShopVC: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductCell
        
        let rowElement = listOfProducts[indexPath.row]
        
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        cell.productIcon.image = rowElement.appIcon
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as! ProductCell
    
        cell.productIcon.backgroundColor = UIColor.green
        
    }
    
}
