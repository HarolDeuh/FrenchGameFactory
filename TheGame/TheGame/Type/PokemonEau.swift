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
    
    override func charge(victime: Pokemon) -> Int {
        
        switch victime.type {
            
        case .feu:
            victime.vie -= (damage + bonusAttaque)
            print("Il lui inflige \(damage + bonusAttaque) PV. Attaque tres efficace")
        case .plante:
            victime.vie -= (damage / 4)
            print("Il lui inflige \(damage / malusAttaque) PV. Attaque sans trop d'effet")
        default:
            victime.vie -= self.damage
        }
        
        
        return victime.vie
    }
}

var carapuce = PokemonEau()
var ptitard = PokemonEau()
var ramoloss = PokemonEau()




