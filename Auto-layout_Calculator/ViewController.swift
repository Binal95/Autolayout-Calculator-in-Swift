//
//  ViewController.swift
//  Assignment4
//
//  Created by Patel, Binal Shaileshkumar on 11/15/18.
//  Copyright © 2018 Patel, Binal Shaileshkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number1 : Double = 0
    var prenumber1 : Double = 0
    var number2 : Double = 0
    var pressmath = false
    var mathop : Int = 0
    var change : Bool = false
     var count : Int = 0
     var a : Int = 0
    var temp2: Double = 0
    
    @IBOutlet weak var lblAnswer: UILabel!
    @IBAction func btnNumberPress(_ sender: UIButton) {
        if pressmath == true {
            
            if(sender.tag == 10)
            {
            lblAnswer.text = "."
                number1 = Double(lblAnswer.text!)!
                temp2 = number1
                pressmath = false
            }
        
            else if (sender.tag == 12)
            {
                if lblAnswer.text == "0"
                {
                    return;
                }
                else
                {
                   
                        lblAnswer.text = String(Double(lblAnswer.text!)! * -1)
                         number1 = Double(lblAnswer.text!)!
                         temp2 = number1
                        pressmath = false
                        lblAnswer.text = String(Double(lblAnswer.text!)! * -1)
                    
                    
                }
            }
            else
            {
                lblAnswer.text = String(sender.tag)
                number1 = Double(lblAnswer.text!)!
                temp2 = number1
                pressmath = false
            }
        
        
        }

        
        else
        {
            
            if(sender.tag == 10)
            {
                lblAnswer.text = lblAnswer.text! + "."
                number1 = Double(lblAnswer.text!)!
                temp2 = number1
            }
            else if (sender.tag == 12)
            {
                if lblAnswer.text == "0"
                {
                    return;
                }
                else
                {
                    lblAnswer.text = String(Double(lblAnswer.text!)! * -1)
                     number1 = Double(lblAnswer.text!)!
                    temp2 = number1
                 
                    
                }}
            
            else
            {
            
            lblAnswer.text = lblAnswer.text! + String(sender.tag)
            number1 = Double(lblAnswer.text!)!
                temp2 = number1
            }
        }
        
    }
    
    @IBAction func btnOperationPress(_ sender: UIButton) {
        lblAnswer.text = String(sender.tag)
        let op = String(sender.tag)
       
        
        switch op {
        case "11":
            lblAnswer.text = ""
            //pressmath = false
            number1 = 0
            prenumber1 = 0
            number2 = 0
            pressmath = false
            break
        case "13":
            pressmath = true
           // NSLog("label value");
           // NSLog(lblAnswer.text!)
            lblAnswer.text = String(Double(temp2/100))
            temp2 = (Double(temp2/100))
            break
        case "14":
            //prenumber1 = number1
            prenumber1 = temp2
            pressmath = true
            lblAnswer.text = "÷"
            a = 14
            break
        case "15":
            //prenumber1 = number1
            prenumber1 = temp2
            pressmath = true
            lblAnswer.text = "x"
            a = 15
            break
        case "16":
            //prenumber1 = number1
            prenumber1 = temp2
            pressmath = true
            lblAnswer.text = "-"
            a = 16
            break
        case "17":
            //prenumber1 = number1
            prenumber1 = temp2
            pressmath = true
            lblAnswer.text = "+"
            a = 17
            break
        case "18":
            pressmath = true
            number2 = number1
            //number2 = Double(lblAnswer.text!)!
            switch (a)
            {
            case 14:
             temp2 = (prenumber1/number2)
            lblAnswer.text = String (prenumber1/number2)
            break
            case 15:
               /* temp2 = (prenumber1*number2)
            lblAnswer.text = String (prenumber1*number2)*/
                temp2 = (prenumber1*number2)
                lblAnswer.text = String (prenumber1*number2)
            break
            case 16:
                temp2 = (prenumber1-number2)
            lblAnswer.text = String (prenumber1-number2)
            break
            case 17:
                temp2 = (prenumber1+number2)
            lblAnswer.text = String (prenumber1+number2)
            break
            default:
            lblAnswer.text = "nothing performed"
            }
        default:
            lblAnswer.text = "nothing performed"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

