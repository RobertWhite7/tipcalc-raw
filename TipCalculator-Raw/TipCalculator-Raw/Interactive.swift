//
//  Interactive.swift
//  TipCalculator-Raw
//
//  Created by Robert White on 10/10/16.
//  Copyright © 2016 Teky. All rights reserved.
//



// Run in interactive mode




class Interactive {
    private var tipCalc = TipCalculator()
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    
    
    func go() {
        while !done {
            
            //Ask the user for input right here.
            
            io.writeMessage ("\nType in Help for options!")
            currentInput = io.getInput()
            
            if currentInput == "Quit" {
                done = true
            }else if currentInput == "Calc"{
                tipCalc.billTotalSum()
                
                
            }else if currentInput == "Help"{
             print("If you want to use Tip Calc then type in Calc and follow the instructions.  To Quit out of program type Quit.")
            
            
            }else{
                print("The input is: \(currentInput)")
            }
            
        }
        print ("Exiting....")
    
        return
    }
}






