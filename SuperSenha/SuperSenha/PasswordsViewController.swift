//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Adriel Alves on 14/12/18.
//  Copyright © 2018 Adriel Alves. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tfPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialChars: Bool!
    
    var passwordGenerator: PasswordGenerator!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Total de Senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacter: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialChars: useSpecialChars)
        
        generate()

    }
    
    func generate() {
        
        tfPasswords.text = ""
        tfPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tfPasswords.text.append(password + "\n\n")
        }
        
    }
    
    @IBAction func generate(_ sender: Any) {
        generate()
    }

}
