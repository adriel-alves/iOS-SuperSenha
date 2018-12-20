//
//  ViewController.swift
//  SuperSenha
//
//  Created by Adriel Alves on 07/12/18.
//  Copyright © 2018 Adriel Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfTotalCaracters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialChars: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let passwordsViewController = segue.destination as! PasswordsViewController
        
        if let numberOfCharacters = Int (tfTotalCaracters.text!) {
            passwordsViewController.numberOfCharacters = numberOfCharacters
        }
        
        if let totalPasswords = Int (tfTotalPasswords.text!) {
            passwordsViewController.numberOfPasswords = totalPasswords
        }
        
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useSpecialChars = swSpecialChars.isOn
        
        view.endEditing(true)
    }


}

