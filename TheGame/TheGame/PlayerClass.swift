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
    var team = [Character]()
    
    init(name: String) {
        self.name = name
    }
    
    func choixPokemon(pokemon: String) -> String {
        
        switch pokemon {
        case "pikachu":
            self.team.append(pikachu)
        case "roucool":
            self.team.append(roucool)
        case "magicarpe":
            self.team.append(magicarpe)
        case "reptincel":
            self.team.append(reptincel)
        case "abra":
            self.team.append(abra)
        case "ronflex":
            self.team.append(ronflex)
        default:
            print("rien a ajouter")
        }
        
        return pokemon
    }
}
