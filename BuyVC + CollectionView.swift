//
//  BuyVC + CollectionView.swift
//  Eny Hackathon
//
//  Created by Trevin Wisaksana on 1/21/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

extension BuyVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "purchasedCell", for: indexPath) as! PurchasedCell
        
        let rowElement = listOfPurchasedProducts[indexPath.row]
        cell.purchasedProjectImage.image = rowElement.appIcon
        
        cell.productLabel.text = "Wemo Switch"
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfPurchasedProducts.count
    }
    
}
