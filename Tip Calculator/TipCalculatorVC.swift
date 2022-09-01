//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Gökçe Kahraman on 28.08.2022.
//

import UIKit

class TipCalculatorVC: UIViewController {
   
    @IBOutlet weak var amuntBeforeTaxTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPersentageSlider: UISlider!

    @IBOutlet weak var numberOfpeopleLabel: UILabel!
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    @IBOutlet weak var eachPersonAmount: UILabel!
    @IBOutlet weak var totalResultLabel: UILabel!
    
    var tipCalculator = TipCalculator(amountBeforeTax: 0, tipPercentage: 0.10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amuntBeforeTaxTextField.becomeFirstResponder()
   
    }
    
    func calculateTip(){
    }
    func updateUI(){
        
    }


    
    @IBAction func tipSliderValueChanged(sender: Any){
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipPersentageSlider.value ))
        calculateTip()
    }
    
    @IBAction func numberOfPeopleSliderValueChanged(sender: Any){
        numberOfpeopleLabel.text = "Split: \(Int(numberOfPeopleSlider.value))"
        calculateTip()
    }
    
    @IBAction func amountBeforeTaxTextfieldChanged(sender: Any){
        calculateTip()
    }
    
    
}

