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
        case "salameche":
            self.team.append(salameche)
        case "caninos":
            self.team.append(caninos)
        case "goupix":
            self.team.append(goupix)
        case "chetiflor":
            self.team.append(chetiflor)
        case "chenipan":
            self.team.append(chenipan)
        case "bulbizarre":
            self.team.append(bulbizarre)
        case "carapuce":
            self.team.append(carapuce)
        case "ptitard":
            self.team.append(ptitard)
        case "ramoloss":
            self.team.append(ramoloss)
        default:
            print("rien a ajouter")
        }
        
        return pokemon
    }
    
    func isDead() -> Bool {
        return self.team.count == 0 
    }
}
