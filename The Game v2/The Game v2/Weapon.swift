//
//  Weapon.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Weapon {
    var name: String
    var damage: Int
    
    init (_ wn: String, _ dmg: Int ) {
        name = wn
        damage = dmg
    }
    
    func masterWeapon() -> Weapon {
        let masterWeapon = Weapon("Super arme", Int.random(in: 70...150))
        return masterWeapon
    }
    
    
    
}
