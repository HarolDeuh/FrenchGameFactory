//
//  CharacterClass.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation


class Character {
    var name: String
    var vie: Int = 10
    var weapon: Weapon
    
    
    init(name: String, weapon: Weapon) {
        self.name = name
        self.weapon = weapon
    }
}

var pikachu = Character(name: "Pikachu", weapon: armeUn)
var roucool = Character(name: "Roucool", weapon: armeDeux)
var magicarpe = Character(name: "Magicarpe", weapon: armeTrois)
var reptincel = Character(name: "Reptincel", weapon: armeQuatre)
var abra = Character(name: "Abra", weapon: armeCinq)
var ronflex = Character(name: "Ronflex", weapon: armeSix)


enum TheCharacters {
    case pikachu, roucool, magicarpe, reptincel, abra, ronflex
    
}
