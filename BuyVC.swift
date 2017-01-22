//
//  BuyVC.swift
//  Eny Hackathon
//
//  Created by Trevin Wisaksana on 1/20/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

class BuyVC: UIViewController {
    
    var listOfPurchasedProducts: [ProductDataModel] = []
    
    @IBAction func unwindBuyVC(segue: UIStoryboardSegue) {}
    
    @IBAction func purchaseButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        
        let wemoSwitchPurchasedProduct = ProductDataModel(appIcon: #imageLiteral(resourceName: "wemoSwitch"))
        listOfPurchasedProducts.append(wemoSwitchPurchasedProduct)
        
    }
    
}
