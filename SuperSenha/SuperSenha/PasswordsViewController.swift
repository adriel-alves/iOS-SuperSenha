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
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func generate(_ sender: Any) {
        
    }
    
    

}
