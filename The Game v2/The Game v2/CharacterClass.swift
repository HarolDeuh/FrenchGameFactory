//
//  Character.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Character {
    enum CharacterType {
        case wizard, knight, bowman
    }
    
    var isType: CharacterType
    var characterName: String?
    var life: Int = 100
    var presentation: String
    var weapon: Weapon

    
    init(isType: CharacterType, _ pr: String = "Je suis un personnage", _ wp: Weapon) {
        self.isType = isType
        presentation = pr
        weapon = wp
    }
    
    
    func charge(sufferer: Character) {
        sufferer.life -= self.weapon.damage
        
    }
    
    func heal() {
        self.life += 20
    }
    
    
}
