//
//  TipCalculator.swift
//  Tip Calculator
//
//  Created by Gökçe Kahraman on 1.09.2022.
//

import Foundation

class TipCalculator{
    var amountBeforeTax : Double = 0
    var tipAmount : Double = 0
    var tipPercentage:Double = 0
    var totalAmount: Double = 0
    
    init(amountBeforeTax: Double, tipPercentage: Double){
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip(){
        tipAmount = amountBeforeTax * tipPercentage
        totalAmount = amountBeforeTax + tipAmount
        
    }
}
