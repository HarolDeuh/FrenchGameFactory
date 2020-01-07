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
    
    func pokemonChoice(pokemon: String) -> String {
        
        switch pokemon {
        case "1":
            self.team.append(pokemonArray[0])
            pokemonArray.remove(at: 0)
        case "2":
            self.team.append(pokemonArray[1])
            pokemonArray.remove(at: 1)
        case "3":
            self.team.append(pokemonArray[2])
            pokemonArray.remove(at: 2)
        case "4":
            self.team.append(pokemonArray[3])
            pokemonArray.remove(at: 3)
        case "5":
            self.team.append(pokemonArray[4])
            pokemonArray.remove(at: 4)
        case "6":
            self.team.append(pokemonArray[5])
            pokemonArray.remove(at: 5)
        case "7":
            self.team.append(pokemonArray[6])
            pokemonArray.remove(at: 6)
        case "8":
            self.team.append(pokemonArray[7])
            pokemonArray.remove(at: 7)
        case "9":
            self.team.append(pokemonArray[8])
            pokemonArray.remove(at: 8)
        default:
            print("Rien a ajouter")
        }
        return pokemon
    }
    
    func isDead() -> Bool {
        return self.team.count == 0 
    }
    
}
