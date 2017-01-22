//
//  MenuVC.swift
//  Eny Hackathon
//
//  Created by Trevin Wisaksana on 1/21/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    
    var listOfPresets: [PresetDataModel] = []

    @IBAction func unwindToMenu(segue: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        
        // Items on the list of presets
        let wemoPreset = PresetDataModel(appIcon: #imageLiteral(resourceName: "wemoIcon"))
        let githubPreset = PresetDataModel(appIcon: #imageLiteral(resourceName: "githubIcon"))
        let philipsHuePreset = PresetDataModel(appIcon: #imageLiteral(resourceName: "hueIcon"))
        let twitterPreset = PresetDataModel(appIcon: #imageLiteral(resourceName: "twitterIcon"))
        
        // Adding the item to the list
        listOfPresets.append(wemoPreset)
        listOfPresets.append(githubPreset)
        listOfPresets.append(philipsHuePreset)
        listOfPresets.append(twitterPreset)
    }
    
}
