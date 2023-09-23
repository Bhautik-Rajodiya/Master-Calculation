//
//  ViewController6.swift
//  Trimmer Prank
//
//  Created by Bhautik Rajodiya on 13/09/23.
//

import UIKit

class ViewController6: UIViewController {

    @IBOutlet weak var amountTextFiledOutlet: UITextField!
    @IBOutlet weak var interestTextFiledOutlet: UITextField!
    @IBOutlet weak var timeTextFiledOutlet: UITextField!
    @IBOutlet weak var calculateButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var txt1: UILabel!
    @IBOutlet weak var txt2: UILabel!
    @IBOutlet weak var txt3: UILabel!
    
    var a = 0.0
    var m = 0
    var r = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButtonOutlet.layer.cornerRadius = 10
        backButtonOutlet.layer.borderWidth = 1
        backButtonOutlet.layer.borderColor = UIColor(red: 217, green: 217, blue: 217, alpha: 1).cgColor
        backButtonOutlet.layer.cornerRadius = 10
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func calculateButtonAction() {
        guard let loanAmount = amountTextFiledOutlet.text,
        let interestRateText = interestTextFiledOutlet.text,
        let loanTenureText = timeTextFiledOutlet.text,
        let loanAmount = Double(loanAmount),
        let interestRate = Double(interestRateText),
        let loanTenure = Double(loanTenureText) else {
            return
        }
        
        if amountTextFiledOutlet.text == ""{
            alertView(meseg: "Enter Your Investment Amount")
        } else if interestTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your Return Value")
        } else if timeTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your Year")
        } else if amountTextFiledOutlet.text == "" && interestTextFiledOutlet.text == "" &&  timeTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your All Amount")
        } else {
            let monthlyInterestRate = (interestRate / 12) / 100
            let numberOfPayments = loanTenure * 12
            
            let emi = loanAmount * monthlyInterestRate * pow(1 + monthlyInterestRate, numberOfPayments) / (pow(1 + monthlyInterestRate, numberOfPayments) - 1)
            
            let monthlyInterestRate1 = (interestRate / 12) / 100
            print(monthlyInterestRate1)
            let numberOfPayments1 = loanTenure * 12
            let totalInterest = (emi * numberOfPayments) - loanAmount
            
            txt1.text = "\(Int(emi))"
            txt2.text = "\(Int(totalInterest))"
            txt3.text = "\(Int(emi * numberOfPayments))"

        }
    }
    
    func alertView(meseg:String){
        let a = UIAlertController(title: "Error", message: meseg, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        present(a, animated: true)
    }
    
    @IBAction func backButtonAction() {
        if let composeViewController = self.navigationController?.viewControllers[1] {
            self.navigationController?.popToViewController(composeViewController, animated: true)
        }
    }
}
