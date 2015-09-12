//
//  ViewController.swift
//  Tpsy Demo
//
//  Created by Sathish kumar Somasundaram on 9/10/15.
//  Copyright (c) 2015 Sayor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipSegment: UISegmentedControl!

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text =   "$ 0.00"
        totalLabel.text = "$ 0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        
        var tipPercentage = tipPercentages[tipSegment.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
    
        tipLabel.text = String(format: "%0.2f", tip)
        totalLabel.text = String(format: "%0.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
    view.endEditing(true)
    }
    
}

