//
//  ViewController2.swift
//  Trimmer Prank
//
//  Created by Bhautik Rajodiya on 13/09/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var v2: UIView!
    @IBOutlet weak var v3: UIView!
    @IBOutlet weak var v4: UIView!
    @IBOutlet weak var v5: UIView!
    @IBOutlet weak var v6: UIView!
    @IBOutlet weak var v7: UIView!
    @IBOutlet weak var v8: UIView!
    @IBOutlet weak var v9: UIView!
    @IBOutlet weak var v10: UIView!
    @IBOutlet weak var v11: UIView!
    @IBOutlet weak var v12: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        v1.layer.cornerRadius = 10
        v2.layer.cornerRadius = 10
        v3.layer.cornerRadius = 10
        v4.layer.cornerRadius = 10
        v5.layer.cornerRadius = 10
        v6.layer.cornerRadius = 10
        v7.layer.cornerRadius = 10
        v8.layer.cornerRadius = 10
        v9.layer.cornerRadius = 10
        v10.layer.cornerRadius = 10
        v11.layer.cornerRadius = 10
        v12.layer.cornerRadius = 10

    }
    
    @IBAction func sipButtonAction() {
        let a = storyboard?.instantiateViewController(identifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func interestButtonAction() {
        let a = storyboard?.instantiateViewController(identifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func discountButtonAction() {
        let a = storyboard?.instantiateViewController(identifier: "ViewController5") as! ViewController5
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func emiButtonAction() {
        let a = storyboard?.instantiateViewController(identifier: "ViewController6") as! ViewController6
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func schoolResultButtonAction() {
        let a = storyboard?.instantiateViewController(identifier: "ViewController8") as! ViewController8
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func squareorHourButtonAction() {
        let a = storyboard?.instantiateViewController(identifier: "ViewController9") as! ViewController9
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func backButtonAction() {
        if let composeViewController = self.navigationController?.viewControllers[0] {
            self.navigationController?.popToViewController(composeViewController, animated: true)
        }
    }
    
    
    
}
