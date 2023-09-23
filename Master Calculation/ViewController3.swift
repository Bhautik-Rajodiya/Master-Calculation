//
//  ViewController3.swift
//  Trimmer Prank
//
//  Created by Bhautik Rajodiya on 13/09/23.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var investmentTextFieldOutlet: UITextField!
    @IBOutlet weak var returnTextFiledOutlet: UITextField!
    @IBOutlet weak var yearTextFieldOutlet: UITextField!
    @IBOutlet weak var txt1: UILabel!
    @IBOutlet weak var txt2: UILabel!
    @IBOutlet weak var txt3: UILabel!
    @IBOutlet weak var calculateButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    
    var amaount = 0.0
    var m = 0
    var a = 0.0
    var returns = 0.0
    var abc = 0
    var ans = 0.0
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
    
    @IBAction func calcuateButtonAction() {
        
        guard let returnTextFiled = returnTextFiledOutlet.text,
              let initialInvestment = Double(returnTextFiled) else {
            return
        }
        
        
        if investmentTextFieldOutlet.text == ""{
            alertView(meseg: "Enter Your Investment Amount")
        } else if returnTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your Return Value")
        } else if yearTextFieldOutlet.text == "" {
            alertView(meseg: "Enter Your Year")
        } else if investmentTextFieldOutlet.text == "" && returnTextFiledOutlet.text == "" &&  yearTextFieldOutlet.text == "" {
            alertView(meseg: "Enter Your All Amount")
        } else {
            
            m = (Int(yearTextFieldOutlet.text ?? "") ?? 0) * 12
            amaount = Double(investmentTextFieldOutlet.text ?? "") ?? 0.0
            returns = Double(initialInvestment / Double(m))
            print(returns)
                for _ in 1...m {
                    ans += amaount
                    ans += (ans) * returns / 100
                    
                }
            var cv = (Int(investmentTextFieldOutlet.text ?? "") ?? 0)  * m
            txt1.text = "\(Int(cv))"
            txt2.text = "\(Int(Int(ans) - cv))"
            txt3.text = "\(Int(ans))"
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
        
        @IBAction func clearAllButtonAction() {
            investmentTextFieldOutlet.text = ""
            returnTextFiledOutlet.text = ""
            yearTextFieldOutlet.text = ""
        }
        
        
    }
