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
    var life: Int = 100
    var damage: Int = Int.random(in: 70 ..< 80)
    var type: PokemonType
    let attackUp: Int = 20
    let attackDown: Int = 4 
    
    
    
    init(type: PokemonType) {
        self.type = type
    }
    
    
    func charge(sufferer: Pokemon) {
        sufferer.life -= self.damage
    }
}

var pokemonArray = [carapuce, ptitard, ramoloss, salameche, caninos, goupix, bulbizarre, chenipan, chetiflor]
