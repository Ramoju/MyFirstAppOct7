//
//  ViewController.swift
//  MyFirstAppOct7
//
//  Created by Emad Nasrallah on 2021-10-07.
//

import UIKit

class ViewController: UIViewController {
    var rates=[String:Double]()

    @IBOutlet weak var alertMSG: UILabel!
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var code: UITextField!
    @IBOutlet weak var cad: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fillData()
    }

    @IBAction func convert(_ sender: Any) {
        let enteredCode=(code.text)?.uppercased()
        if let rate=rates[enteredCode!]
         {
            alertMSG.text=""
            if let enteredAmount=Double(amount.text!){
               let cadAmount=rate*enteredAmount
               cad.text=String(format: "%.2f", cadAmount)
            }else {
                alertMSG.text="Please enter a correct amount"
            }
        }
        else {
            alertMSG.text="Unrecognized currecny"
            cad.text="0"
        }
        
    }
    func fillData(){
        rates["USD"]=1.26
        rates["EUR"]=1.45
        rates["JOD"]=1.78
        rates["INR"]=0.017
        rates["LBP"]=0.00083
        rates["NRS"]=0.011
        rates["TRY"]=0.14
        rates["SGD"]=0.93
        rates["HKD"]=0.16
        rates["DOP"]=0.022
    }
    
}

