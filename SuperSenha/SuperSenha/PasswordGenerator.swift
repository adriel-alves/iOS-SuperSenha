//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Adriel Alves on 14/12/18.
//  Copyright © 2018 Adriel Alves. All rights reserved.
//

import Foundation

class PasswordGenerator {
   
    var numberOfCharacter: Int
    var useLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialChars: Bool
    
    var passwords: [String] = []
    
    init(numberOfCharacter: Int, useLetters: Bool, useNumbers: Bool, useCapitalLetters: Bool, useSpecialChars: Bool) {
        
        var numchars = min(numberOfCharacter, 16)
        numchars = max(numchars, 1)
        
        self.numberOfCharacter = numchars
        self.useLetters = useLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialChars = useSpecialChars
        
    }
    
    let letters = "abcdefghijklmnopqrstuvwxyz"
    let symbols = "˜`!@#$%ˆ&*()-_=+:;}]{['<>,.?/|"
    let numbers = "0123456789"
    
    func generate(total: Int) -> [String] {
        
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters {
            universe += letters
        }
        
        if useNumbers {
            universe += numbers
        }

        if useSpecialChars {
            universe += symbols
        }

        if useCapitalLetters {
            universe += letters.uppercased()
        }
        
        let universeArray = Array(universe)
        
        while passwords.count < total {
            var password: String = ""
            for _ in 1...numberOfCharacter {
                
                let index: Int = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String (universeArray[index])
            }
            passwords.append(password)
        }
        return passwords
        
    }
    
}
