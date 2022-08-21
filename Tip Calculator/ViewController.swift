//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Will on 8/19/22.
//
//  Hola

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.green], for: UIControl.State.selected)
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get the total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2F", tip)
        // update total amount label
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

	
