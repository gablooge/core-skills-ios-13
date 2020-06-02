//
//  ViewController.swift
//  Core Skills
//
//  Created by SAMSUL HADI on 02/06/20.
//  Copyright © 2020 SAMSUL HADI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = "Changed with Code!"
    }
    
    @IBAction func buttonWasPressed(_ sender: Any) {
        myLabel.text = "Hello \(myTextField.text)!"
    }
}

