//
//  PokemonPlante.swift
//  TheGame
//
//  Created by harold aholoukpe on 16/12/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

class PokemonPlante: Pokemon {
    init() {
        super.init(type: .plante)
    }
    
    override func charge(victime: Pokemon) -> Int {
        switch victime.type {
        case .eau:
            victime.vie -= (damage + 20)
            print("Il lui inflige \(damage + 20) PV. Attaque tres efficace")
        case .feu:
            victime.vie -= (damage / 4)
            print("Il lui inflige \(damage / 4) PV. Attaque sans trop d'effet")
        default:
            victime.vie -= self.damage
            print("attaque normal")
        }
        
        return victime.vie
    }
    
}

var bulbizarre = PokemonPlante()
var chenipan = PokemonPlante()
var chetiflor = PokemonPlante()
