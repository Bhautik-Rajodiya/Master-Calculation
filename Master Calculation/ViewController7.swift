//
//  ViewController7.swift
//  Trimmer Prank
//
//  Created by Bhautik Rajodiya on 14/09/23.
//

import UIKit

class ViewController7: UIViewController {

    @IBOutlet weak var backButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonOutlet.layer.borderWidth = 1
        backButtonOutlet.layer.borderColor = UIColor(red: 217, green: 217, blue: 217, alpha: 1).cgColor
        backButtonOutlet.layer.cornerRadius = 10
    }
    
    @IBAction func backButtonAction() {
        if let composeViewController = self.navigationController?.viewControllers[0] {
            self.navigationController?.popToViewController(composeViewController, animated: true)
        }
    }

}
