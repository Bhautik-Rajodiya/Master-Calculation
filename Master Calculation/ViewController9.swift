//
//  ViewController9.swift
//  All In One - Calculation Tool
//
//  Created by Bhautik Rajodiya on 14/09/23.
//

import UIKit

class ViewController9: UIViewController {

    @IBOutlet weak var numberTextFieldOutlet: UITextField!
    @IBOutlet weak var squareTextFiledOutlet: UITextField!
    @IBOutlet weak var calculateButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var txt1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateButtonOutlet.layer.cornerRadius = 10
        backButtonOutlet.layer.borderWidth = 1
        backButtonOutlet.layer.borderColor = UIColor(red: 217, green: 217, blue: 217, alpha: 1).cgColor
        backButtonOutlet.layer.cornerRadius = 10
        
    }

    @IBAction func calculatButtonAction() {
        guard let number = numberTextFieldOutlet.text,
              let qustion = squareTextFiledOutlet.text,
              let loanAmount = Int(number),
              let interestRate = Int(qustion) else {
            return
        }
        
        var a = interestRate
        var b = loanAmount
        for _ in 1..<a {
            b = b * loanAmount
        }
        txt1.text = "\(b)"
    }
    
    
    @IBAction func backButtonAction() {
        if let composeViewController = self.navigationController?.viewControllers[1] {
            self.navigationController?.popToViewController(composeViewController, animated: true)
        }
    }
}
