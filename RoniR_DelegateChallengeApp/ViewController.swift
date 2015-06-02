//
//  ViewController.swift
//  RoniR_DelegateChallengeApp
//
//  Created by Roni Rozenblat on 5/18/15.
//  Copyright (c) 2015 DINA TECHNOLOGIES. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var zipCodeTxtField: UITextField!
    @IBOutlet weak var cashTxtField: UITextField!
    @IBOutlet weak var lockableTxtField: UITextField!
    @IBOutlet weak var editSwitch: UISwitch!
    
    
    let zipCodeDel = ZipCodeFieldTextDelegate()
    let cashCodeDel = CashCodeFieldTextDelegate()
    
        
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.zipCodeTxtField.delegate = zipCodeDel
        self.cashTxtField.delegate = cashCodeDel
        self.lockableTxtField.delegate = self
        
        self.editSwitch.setOn(false, animated: false)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return self.editSwitch.on
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func updateCanEditFlag(sender: AnyObject) {
        if !(sender as! UISwitch).on {
            self.lockableTxtField.resignFirstResponder()
        }
    }
   
}

