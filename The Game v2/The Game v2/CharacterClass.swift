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
    
    var name: String?
    var life: Int = 100
    var intro: String
    var weapon: Weapon
    var bonus: Int = 20
    
    init(_ pr: String = "Je suis un personnage", _ wp: Weapon) {
        intro = pr
        weapon = wp
    }
    
    func strike(_ sufferer: Character) {
        sufferer.life -= self.weapon.damage
    }
    
    func heal() {
        self.life += bonus
        print("\(self.name?.capitalized ?? "Le personnage") : Ma vie augmente de \(bonus) points, j'ai maintenant \(self.life) PV ")
    }
    
    func changeWeapon() {
        weapon = weapon.masterWeapon()
    }
}
