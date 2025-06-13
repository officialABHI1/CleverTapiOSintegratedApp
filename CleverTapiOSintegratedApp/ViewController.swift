//
//  ViewController.swift
//  CleverTapiOSintegratedApp
//
//  Created by Abhinav Srivastav on 11/06/25.
//

import UIKit
import CleverTapSDK

class ViewController: UIViewController {

    @IBOutlet weak var onuserlogin: UIButton!
    
    
    @IBOutlet weak var pushevent: UIButton!
    @IBAction func onuserlogin(_ sender: Any) {
        
        let profile: Dictionary<String, AnyObject> = [
            //Update pre-defined profile properties
            "Name": "Asrivas Testuser" as AnyObject,
            "Email": "asrivastestuser@gmail.com" as AnyObject,
            //Update custom profile properties
            "Plan type": "Silver" as AnyObject,
            "Favorite Food": "Pizza" as AnyObject
        ]

        CleverTap.sharedInstance()?.onUserLogin(profile)
        
    }
    
    @IBAction func pushevent(_ sender: Any) {
        CleverTap.sharedInstance()?.recordEvent("Product viewed")
        
    }
    
    @IBAction func InAppMessage(_ sender: Any) {
        CleverTap.sharedInstance()?.recordEvent("In-App Campaign")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

