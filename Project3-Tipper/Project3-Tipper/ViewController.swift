//
//  ViewController.swift
//  Project3-Tipper
//
//  Created by Krishna Kandula on 4/15/16.
//  Copyright © 2016 Krishna Kandula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BillTextField: UITextField!
    @IBOutlet weak var TipPercentLabel: UILabel!
    @IBOutlet weak var TipTotalLabel: UILabel!
    @IBOutlet weak var TipSlider: UISlider!
    @IBOutlet weak var TotalLabel: UILabel!
    
    /**
     #TipSliderChanged
     Updates the tip value whenever slider is changed
    */
    @IBAction func TipSliderChanged(sender: UISlider) {
        let tipValue = Int(sender.value)
        TipPercentLabel.text = "\(tipValue)%"
        updateTip()
    }
    
    /**
    #TextFieldDidChange
    Calls updateTip function whenever text is entered
     */
    func textFieldDidChange(textField: UITextField){
        updateTip();
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        BillTextField.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), forControlEvents: UIControlEvents.EditingChanged)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     #updateTip
     Calculates the tip amount and displays it
    */
    func updateTip(){
        if(BillTextField.text != "" && Int(BillTextField.text!)! > 0){
            let tipValue = (Double(TipSlider.value) / 100) + 1      //calculates total tip
            let total = Double(BillTextField.text!)! * tipValue      //calculates total bill
        
            TipTotalLabel.text = "$\(String(format:"%.2f", tipValue))"
            TotalLabel.text = "$\(String(format:"%.2f", total))"
        } else {
            TipTotalLabel.text = "$0.00"
            TotalLabel.text = "$0.00"
        }
        
    }
    
    

}

