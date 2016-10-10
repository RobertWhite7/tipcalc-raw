//
//  Interactive.swift
//  TipCalculator-Raw
//
//  Created by Robert White on 10/10/16.
//  Copyright © 2016 Teky. All rights reserved.
//



// Run in interactive mode




class Interactive {
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    
    func go() {
        while !done {
            
            //Ask the user for input right here.
            
            io.writeMessage ("\nInput")
            currentInput = io.getInput()
            
            if currentInput == "q" {
                done = true
            }else{
                print("The input is: \(currentInput)")
            }
            
        }
        print ("Exiting....")
    
        return
    }
}
