//
//  ViewController.swift
//  Tapper
//
//  Created by Krishna Kandula on 4/15/16.
//  Copyright © 2016 Krishna Kandula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0;
    
    @IBOutlet weak var CountLabel: UILabel!

    @IBAction func TapButton(sender: AnyObject) {
        
        count+=1
        CountLabel.text = "\(count)"
    }
    
    @IBAction func ResetButton(sender: AnyObject) {
        count = 0
        CountLabel.text = "\(count)"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        CountLabel.text = "\(count)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

