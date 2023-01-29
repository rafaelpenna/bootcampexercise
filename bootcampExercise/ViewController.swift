//
//  ViewController.swift
//  bootcampExercise
//
//  Created by Rafael Penna on 29/01/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameField: UITextField!
    @IBOutlet var adressField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.delegate = self
        adressField.delegate = self
        passwordField.delegate = self
        
        loginButton.isEnabled = false
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        let field = textField
        field.layer.borderColor = UIColor.blue.cgColor
        field.layer.borderWidth = 1
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let field = textField
        if field.text == "" {
            field.layer.borderColor = UIColor.red.cgColor
            field.layer.borderWidth = 2
        } else {
            field.layer.borderColor = UIColor.lightGray.cgColor
            field.layer.borderWidth = 1
        }
        
        validateButton()
    }
    
    

    @IBAction func cadastrateButton(_ sender: Any) {
        print("Cadastro realizado com sucesso")
    }
    
    private func validateButton() {
        if nameField.text == "" || adressField.text == "" || passwordField.text == "" {
            loginButton.isEnabled = false
        } else {
            loginButton.isEnabled = true
        }
    }
}

