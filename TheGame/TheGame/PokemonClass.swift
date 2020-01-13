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
    
//    func care(player: Player) {
//        print("\(player.name): Tu as dans ton équipe \(player.team.count) pokemons")
//        print("Choisis celui que tu souhaites soigner (1, 2 ou 3)")
//
//        for (index, pokemon) in player.team.enumerated() {
//            print(" \(index + 1) \(pokemon.name!): \(pokemon.life) PV")
//        }
//
//        let pokemonSoin = Int(readLine()!)!
//
//        player.team[pokemonSoin - 1].life += 30
//        print("Ton pokemon \(player.team[pokemonSoin - 1].name!) a maintenant \(player.team[pokemonSoin - 1].life) PV")
//        print(separateur)
//    }
    
    func care() {
        life += 20
    }
    
    
    
}

var pokemonArray = [carapuce, ptitard, ramoloss, salameche, caninos, goupix, bulbizarre, chenipan, chetiflor]
