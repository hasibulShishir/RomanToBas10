//
//  ViewController.swift
//  RomanToBase10
//
//  Created by Hasibul Shishir on 5/25/17.
//  Copyright © 2017 Hasibul Shishir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnEnter: UIButton!
    @IBOutlet weak var txtFieldInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnEnterPressed(_ sender: Any) {
        
        lblResult.text = romanToBase10(roman: txtFieldInput.text!)
        txtFieldInput.text = ""
    }
    
    func romanToBase10(roman:String)-> String{
        
        if roman.romanNumeralIntValue() == 0 {
            return "Please input a valid Roman numeral"
        }else {
            return "Result = \(roman.romanNumeralIntValue())"
            
        }
    }
}


extension String {
    
    func romanNumeralIntValue() -> Int  {
        
        if range(of: "^(?=[MDCLXVI])M*(C[MD]|D?C{0,3})(X[CL]|L?X{0,3})(I[XV]|V?I{0,3})$", options: .regularExpression) == nil  {
            
            return 0
            
        }
        
        var result = 0
        
        var maxValue = 0
        
        uppercased().characters.reversed().forEach {
            
            let value: Int
            
            switch $0 {
                
            case "M":
                
                value = 1000
                
            case "D":
                
                value = 500
                
            case "C":
                
                value = 100
                
            case "L":
                
                value = 50
                
            case "X":
                
                value = 10
                
            case "V":
                
                value = 5
                
            case "I":
                
                value = 1
                
            default:
                
                value = 0
                
            }
            
            maxValue = max(value, maxValue)
            
            result += value == maxValue ? value : -value
            
        }
        
        return result
        
    }
    
}



