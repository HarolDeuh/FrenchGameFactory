//
//  PlayerClass.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var team = [Pokemon]()
    
    init(name: String) {
        self.name = name
    }
    
    func choixPokemon(pokemon: String) -> String {
        
        switch pokemon {
        case "1":
            self.team.append(tableauPokemon[0])
            tableauPokemon.remove(at: 0)
        case "2":
            self.team.append(tableauPokemon[1])
            tableauPokemon.remove(at: 1)
        case "3":
            self.team.append(tableauPokemon[2])
            tableauPokemon.remove(at: 2)
        case "4":
            self.team.append(tableauPokemon[3])
            tableauPokemon.remove(at: 3)
        case "5":
            self.team.append(tableauPokemon[4])
            tableauPokemon.remove(at: 4)
        case "6":
            self.team.append(tableauPokemon[5])
            tableauPokemon.remove(at: 5)
        case "7":
            self.team.append(tableauPokemon[6])
            tableauPokemon.remove(at: 6)
        case "8":
            self.team.append(tableauPokemon[7])
            tableauPokemon.remove(at: 7)
        case "9":
            self.team.append(tableauPokemon[8])
            tableauPokemon.remove(at: 8)
        default:
            print("Rien a ajouter")
        }
        return pokemon
    }
    
    func isDead() -> Bool {
        return self.team.count == 0 
    }
    
}
