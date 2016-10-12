//
//  tipCalc.swift
//  TipCalculator-Raw
//
//  Created by Robert White on 10/10/16.
//  Copyright © 2016 Teky. All rights reserved.
//

import Foundation

class TipCalculator {
    var total: Double = 0
    var taxPct: Double = 0
    var tipPct: Double = 0
    var divide: Double = 0
    var totalWithTip: Double = 0
    let io = Io()

    
        func grandTotal(){
            let billTotal = String (format: "%.2f" , Double((total * taxPct) + (total * tipPct)) + total)
           print("Your grand total includoing tip is: \(billTotal) Thank you for your Business! Have a nice day. :)")
            return
        }
    
       func divideBill(){
           let divideInput = String (format: "%.2f" , Double(((total * taxPct) + (total * tipPct)) + total) / (divide))
           print(" Your total divided by party number is: \(divideInput)")
        }
    
        func getbillTotal(){
            print(" Enter total of bill here:")
            let billInput = io.getInput()
            if let myBill = Double(billInput){
                total = myBill
            }else{
                print("Wrong Input")
            }
        }
    
        func getTaxPct(){
            print(" Set Tax percentage by 2 Decimal Points")
            let taxInput = io.getInput()
            if let myTax = Double(taxInput){
                taxPct = myTax
            }else{
                print("Wrong Input")
            }
        }
    
        func getTipPct(){
            print("Set Tip percentage by 2 Decimal Points")
            let tipInput = io.getInput()
            if let myTip = Double(tipInput){
                tipPct = myTip
            }else{
                print("Wtrong Input")
            }
        
        }
    func getDivide(){
        print("Input the number size of your party.")
        let divideInput = io.getInput()
        if let myDivide = Double(divideInput){
            divide = myDivide
        }else{
            print("Wtrong Input")
        }
        
    }
    func billTotalSum() {
        getbillTotal()
        getTaxPct()
        getTipPct()
        getDivide()
        grandTotal()
        divideBill()
    }
}
       








