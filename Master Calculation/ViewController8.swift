//
//  ViewController8.swift
//  All In One - Calculation Tool
//
//  Created by Bhautik Rajodiya on 14/09/23.
//

import UIKit

class ViewController8: UIViewController {

    @IBOutlet weak var totalMarksTextFieldOutlet: UITextField!
    @IBOutlet weak var yourMarksTextFiledOutlet: UITextField!
    @IBOutlet weak var calculateButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var txt1: UILabel!
    
    var a = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButtonOutlet.layer.cornerRadius = 10
        backButtonOutlet.layer.borderWidth = 1
        backButtonOutlet.layer.borderColor = UIColor(red: 217, green: 217, blue: 217, alpha: 1).cgColor
        backButtonOutlet.layer.cornerRadius = 10
    }
    
    @IBAction func calculatButtonAction() {
        a = (Double(Int(yourMarksTextFiledOutlet.text ?? "") ?? 0) / Double(Int(totalMarksTextFieldOutlet.text ?? "") ?? 0)) * 100
        txt1.text = "\(Int(a))%"
    }
    
    
    @IBAction func backButtonAction() {
        if let composeViewController = self.navigationController?.viewControllers[1] {
            self.navigationController?.popToViewController(composeViewController, animated: true)
        }
    }
    

}
