//
//  PairVC.swift
//  Eny Hackathon
//
//  Created by Trevin Wisaksana on 1/20/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit


class PairVC: UIViewController {
    
    var unwind: Bool = false
    
    @IBAction func unwind(segue: UIStoryboardSegue) {}
    
    @IBAction func cancelButton(_ sender: Any) {
        unwind = true
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        //declare parameter as a dictionary which contains string as key and value combination. considering inputs are valid
        
        let parameter = serialNumberTextField.text
        
        //create the url with URL
        let url = URL(string: "http://912188e6.ngrok.io/v1/eny/mode")! //change the url
        
        //create the session object
        let session = URLSession.shared
        
        //now create the URLRequest object using the url object
        var request = URLRequest(url: url)
        request.httpMethod = "POST" //set http method as POST
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameter, options: .prettyPrinted) // pass string to nsdata object and set it as request body
            
        } catch let error {
            print(error.localizedDescription)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
                
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
    
    
    // Serial number used for the Eny Button pairing
    @IBOutlet weak var serialNumberTextField: UITextField!
    
    // Displays useful message
    @IBOutlet weak var usefulMessageLabel: UILabel!
    
    // Button when pairing is complete
    @IBAction func nextButton(_ sender: Any) { }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Adding a corner radius to the serial number text field
        serialNumberTextField.borderStyle = UITextBorderStyle.roundedRect
    }
    
    // Method to check if the serial number has enough characters
    func checkSerialNumber() -> Bool {
        if unwind == true {
            return true
        }
        
        if (serialNumberTextField.text?.characters.count)! < 8 {
            usefulMessageLabel.text = "Please enter a valid serial number."
            return false
        } else {
            usefulMessageLabel.text = "Type your Eny Serial Number located at the back of the Eny Button."
            return true
        }
    }
    
    // Method to make sure that segue will only happen if serial number is valid
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if checkSerialNumber() {
            return true
        } else {
            return false
        }
    }
    


}

