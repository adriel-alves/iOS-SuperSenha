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
    
    func generate(total: Int) -> [String] {
        
        passwords.removeAll()
        var universe: CharacterSet
        
        if useLetters {
            universe = NSCharacterSet.alphanumerics
        }
        
        if useNumbers {
            universe = universe.union(NSCharacterSet.alphanumerics)
        }

        if useSpecialChars {
            universe = universe.union(NSCharacterSet.symbols)
        }

        if useCapitalLetters {
            universe = universe.union(NSCharacterSet.capitalizedLetters)
        }
       
        
        for _ in 1...numberOfCharacter {
         
        }
        
        return passwords
        
    }
    
}
