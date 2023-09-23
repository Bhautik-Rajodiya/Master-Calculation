//
//  ViewController4.swift
//  Trimmer Prank
//
//  Created by Bhautik Rajodiya on 13/09/23.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var pricncipalTextFiledOutlet: UITextField!
    @IBOutlet weak var interestTextFiledOutlet: UITextField!
    @IBOutlet weak var timeTextFiledOutlet: UITextField!
    @IBOutlet weak var calculateButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var txt1: UILabel!
    
    var a = 0.0
    var b = 0.0
    var c = 0.0
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
        if pricncipalTextFiledOutlet.text == ""{
            alertView(meseg: "Enter Your Investment Amount")
        } else if interestTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your Return Value")
        } else if timeTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your Year")
        } else if pricncipalTextFiledOutlet.text == "" && interestTextFiledOutlet.text == "" &&  timeTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your All Amount")
        } else {
            a = Double((Float(pricncipalTextFiledOutlet.text ?? "") ?? 0.0))
            b = 1 + (((Double(interestTextFiledOutlet.text ?? "") ?? 0.0) / 100) * (Double(timeTextFiledOutlet.text ?? "") ?? 0.0))
            txt1.text = "\(Int(a * b))"
            print(a)
            print(b)
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
