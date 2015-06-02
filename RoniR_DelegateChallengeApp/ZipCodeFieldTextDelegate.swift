//
//  ZipCodeFieldTextDelegate.swift
//  RoniR_DelegateChallengeApp
//
//  Created by Roni Rozenblat on 5/23/15.
//  Copyright (c) 2015 DINA TECHNOLOGIES. All rights reserved.
//

import Foundation
import UIKit


// This TextFieldDelegate will only allow digits , and a maximum of five characters.

class ZipCodeFieldTextDelegate: NSObject,UITextFieldDelegate
{
    var digitEnteredCnt:Int!
    
    override init() {
        digitEnteredCnt = 0
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        println(digitEnteredCnt)
        // If the user has entered less than 6 digits let them continue to enter digits
        if string != ""
        {
            if digitEnteredCnt != 5
            {
                digitEnteredCnt = digitEnteredCnt + 1
                return true
            }
            else
            {
                return false
            }
        }
        else if string == "" && digitEnteredCnt != 0
        {
            digitEnteredCnt = digitEnteredCnt - 1
            return true
        }
        else
        {
            println("DO NOTHING")
            return false
        }
        
    }
}
