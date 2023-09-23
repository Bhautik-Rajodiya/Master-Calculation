//
//  ViewController5.swift
//  Trimmer Prank
//
//  Created by Bhautik Rajodiya on 13/09/23.
//

import UIKit

class ViewController5: UIViewController {
    
    @IBOutlet weak var priceTextFiledOutlet: UITextField!
    @IBOutlet weak var discountTextFiledOutlet: UITextField!
    @IBOutlet weak var txt1: UILabel!
    @IBOutlet weak var txt2: UILabel!
    
    @IBOutlet weak var calculateButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    
    var a = 0
    
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
    
    @IBAction func countButtonAction() {
        if priceTextFiledOutlet.text == ""{
            alertView(meseg: "Enter Your Price")
        } else if discountTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your Discount")
        } else if priceTextFiledOutlet.text == "" && discountTextFiledOutlet.text == "" {
            alertView(meseg: "Enter Your All Data")
        } else {
            a = ((Int(priceTextFiledOutlet.text ?? "") ?? 0) * (Int(discountTextFiledOutlet.text ?? "") ?? 0)) / 100
            txt1.text = "Price After Discount : \((Int(priceTextFiledOutlet.text ?? "") ?? 0) - a)"
            txt2.text = "Saved Amount : \(a)"
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
