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
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = "Changed with Code!"
        myTextField.becomeFirstResponder()
        myTextField.delegate = self
        lastNameTextField.delegate = self
    }
    
    @IBAction func buttonWasPressed(_ sender: Any) {
        myLabel.text = "Hello \(myTextField.text!) \(lastNameTextField.text!)!"
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextField.resignFirstResponder()
        view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}

