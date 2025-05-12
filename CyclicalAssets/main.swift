//
//  main.swift
//  CyclicalAssets
//
//  Created by Edwin Cardenas on 5/7/25.
//

import Foundation

class Simulation {
    func run() {
        let vault13 = Vault(number: 13)
        print("Created \(vault13)")
        
        let coin = Asset(name: "Rare Coin", value: 1_000.0)
        let gem = Asset(name: "Big Diamond", value: 5_000.0)
        let poem = Asset(name: "Magnum Opus", value: 0.0)
        
        vault13.store(coin)
        vault13.store(gem)
        
        print("Created some assets: \([coin, gem, poem])")
        
        coin.value += 137
    }
}

let simulation = Simulation()
simulation.run()

dispatchMain()
