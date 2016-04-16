//
//  ViewController.swift
//  Project2-RedAlert
//
//  Created by Krishna Kandula on 4/15/16.
//  Copyright © 2016 Krishna Kandula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func AlertButtonAction(sender: AnyObject) {
        
        //Displays a message
        let alertController = UIAlertController(title: "Hello!", message: "This is Krishna Kandula", preferredStyle: UIAlertControllerStyle.Alert)
        
        //Shows the "OK" button on the message
        alertController.addAction(UIAlertAction(title: "Cool beans", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

