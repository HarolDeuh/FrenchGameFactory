//
//  PokemonFeu.swift
//  TheGame
//
//  Created by harold aholoukpe on 16/12/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

class PokemonFeu: Pokemon {
    init() {
        super.init(type: .feu)
    }
    
    override func charge(sufferer: Pokemon) {
           
           switch sufferer.type {
               
           case .plante:
               sufferer.life -= (damage + 20)
               print("Il lui inflige \(damage + 20) PV. Attaque tres efficace")
           case .eau:
               sufferer.life -= (damage / 4)
               print("Il lui inflige \(damage / 4) PV. Attaque sans trop d'effet")
           default:
            sufferer.life -= self.damage
               print("attaque normal")
           }
        
           
       }
    
    
}

var salameche = PokemonFeu()
var goupix = PokemonFeu()
var caninos = PokemonFeu()
