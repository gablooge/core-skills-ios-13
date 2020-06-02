//
//  ViewController.swift
//  Core Skills
//
//  Created by SAMSUL HADI on 02/06/20.
//  Copyright © 2020 SAMSUL HADI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = "Changed with Code!"
        myTextField.becomeFirstResponder()
        myTextField.delegate = self
    }
    
    @IBAction func buttonWasPressed(_ sender: Any) {
        myLabel.text = "Hello \(myTextField.text!)!"
        myTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextField.resignFirstResponder()
        view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        return false
    }
    
}

