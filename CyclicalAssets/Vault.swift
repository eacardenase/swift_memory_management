//
//  Vault.swift
//  CyclicalAssets
//
//  Created by Edwin Cardenas on 5/7/25.
//

import Foundation

class Vault {
    let number: Int
    
    private(set) var assets = [Asset]()
    
    var totalValue: Double {
        return assets.reduce(0) { $0 + $1.value }
    }
    
    init(number: Int) {
        self.number = number
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func store(_ asset: Asset) {
        asset.container = self
        
        asset.changeHandler = { [weak self] (change) in
            print("An asset has changed value by \(change). New total value: \(String(describing: self?.totalValue))")
        }
        
        assets.append(asset)
    }
}

extension Vault: CustomStringConvertible {
    var description: String {
        "Vault(\(number))"
    }
}
