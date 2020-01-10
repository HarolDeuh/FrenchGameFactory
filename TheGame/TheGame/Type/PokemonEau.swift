//
//  PokemonEau.swift
//  TheGame
//
//  Created by harold aholoukpe on 16/12/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

class PokemonEau: Pokemon {
    
    init() {
        super.init(type: .eau)
    }
    
    override func charge(sufferer: Pokemon) {
        
        switch sufferer.type {
            
        case .feu:
            sufferer.life -= (damage + attackUp)
            print("Il lui inflige \(damage + attackUp) PV. Attaque tres efficace")
        case .plante:
            sufferer.life -= (damage / 4)
            print("Il lui inflige \(damage / attackDown) PV. Attaque sans trop d'effet")
        default:
            sufferer.life -= self.damage
        }
    }
}

var carapuce = PokemonEau()
var ptitard = PokemonEau()
var ramoloss = PokemonEau()




