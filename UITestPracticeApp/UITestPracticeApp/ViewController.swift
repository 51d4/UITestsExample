//
//  ViewController.swift
//  UITestPracticeApp
//
//  Created by Sida Nakrosyte on 18/03/2019.
//  Copyright © 2019 Sida Nakrosyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonWasTapped(_ sender: Any) {
        label.text = "Hello \(textField.text ?? "")"
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.accessibilityIdentifier = "MyLabel"
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "text from code"
        textField.becomeFirstResponder()
    }
}


