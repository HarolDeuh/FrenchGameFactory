//
//  CharacterClass.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation


class Pokemon {
    enum PokemonType {
        case eau, feu, plante
    }
    
    var name: String?
    var vie: Int = 100
    var damage: Int = Int.random(in: 10 ..< 40)
    var type: PokemonType
    
    
    
    init(type: PokemonType) {
        self.type = type
    }
    
    
    func charge(victime: Pokemon) -> Int {
        // Le code
        victime.vie -= self.damage
        return victime.vie
    }
    
    
}

var tableauPokemon = [carapuce, ptitard, ramoloss, salameche, caninos, goupix, bulbizarre, chenipan, chetiflor ]
