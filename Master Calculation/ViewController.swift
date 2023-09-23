//
//  ViewController.swift
//  Trimmer Prank
//
//  Created by Bhautik Rajodiya on 13/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startAppOutlet: UIButton!
    @IBOutlet weak var aboutUSOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAppOutlet.layer.cornerRadius = 10
        startAppOutlet.layer.borderWidth = 2
        startAppOutlet.layer.borderColor = UIColor.white.cgColor
        
        aboutUSOutlet.layer.cornerRadius = 10
        aboutUSOutlet.layer.borderWidth = 2
        aboutUSOutlet.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func aboutUsButtonAction() {
        let a = storyboard?.instantiateViewController(identifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(a, animated: true)
    }
    
    

    @IBAction func startAppButtonAction() {
        let a = storyboard?.instantiateViewController(identifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(a, animated: true)
    }
    
}

