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
    var vie: Int = 100
    var weapon: Weapon
    
    
    init(name: String, weapon: Weapon) {
        self.name = name
        self.weapon = weapon
    }
}
