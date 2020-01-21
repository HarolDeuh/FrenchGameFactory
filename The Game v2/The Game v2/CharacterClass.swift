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
    
    var characterName: String?
    var life: Int = 100
    var presentation: String
    var weapon: Weapon
    
    init(_ pr: String = "Je suis un personnage", _ wp: Weapon) {
        presentation = pr
        weapon = wp
    }
    
    func strike(_ sufferer: Character) {
        sufferer.life -= self.weapon.damage
    }
    
    func heal() {
        self.life += 20
    }
}
