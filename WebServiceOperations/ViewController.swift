//
//  ViewController.swift
//  WebServiceOperations
//
//  Created by Arpit Vishwakarma on 26/10/15.
//  Copyright © 2015 Arpit Vishwakarma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let reachability = AVReachability.reachabilityForInternetConnection()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        /* Add this key into info.plist
        
        <key>NSAppTransportSecurity</key>
        <dict>
            <key>NSAllowsArbitraryLoads</key>
            <true/>
        </dict>
        
        */
        
        if reachability?.isReachable() == true {
           
            let params:NSDictionary = ["email":"username" as String!, "pass": "pass" as String!]
            let webOperation = AVWebOperation()
            webOperation.callServiceWithUrl("LOGINURL", param: params, completion: { (result) -> Void in
                
                let status = result.objectForKey("status")?.boolValue
                if status == true {
                    //Handle the response here:
                }
            })
            
        } else {
            
            let alertView = UIAlertController(title: "Message!", message: "No network.", preferredStyle: .Alert)
            alertView.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertView, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

