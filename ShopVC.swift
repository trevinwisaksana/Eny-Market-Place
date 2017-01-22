//
//  ShopVC.swift
//  Eny Hackathon
//
//  Created by Trevin Wisaksana on 1/21/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

class ShopVC: UIViewController {
    
    var listOfProducts: [ProductDataModel] = []
    
    @IBAction func unwindToMenu(segue: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        
        // Instantiatng products
        let wemoSwitchProduct = ProductDataModel(appIcon: #imageLiteral(resourceName: "wemoSwitch"))
        let wemoMotionProduct = ProductDataModel(appIcon: #imageLiteral(resourceName: "wemoMotion"))
        let augustLockProduct = ProductDataModel(appIcon: #imageLiteral(resourceName: "augustLockIcon"))
        let googleHomeSpeakerProduct = ProductDataModel(appIcon: #imageLiteral(resourceName: "googleHomeSpeakerIcon"))
        
        // Adding the item to the list
        listOfProducts.append(wemoSwitchProduct)
        listOfProducts.append(wemoMotionProduct)
        listOfProducts.append(augustLockProduct)
        listOfProducts.append(googleHomeSpeakerProduct)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
