//
//  Weapon.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Weapon {
    var weaponName: String
    var damage: Int
    
    init (_ wn: String, _ dmg: Int ) {
        weaponName = wn
        damage = dmg
    }
}
