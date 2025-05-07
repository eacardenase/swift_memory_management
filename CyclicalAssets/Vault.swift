//
//  Vault.swift
//  CyclicalAssets
//
//  Created by Edwin Cardenas on 5/7/25.
//

import Foundation

class Vault {
    let number: Int
    
    init(number: Int) {
        self.number = number
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
}

extension Vault: CustomStringConvertible {
    var description: String {
        "Vault(\(number))"
    }
}
