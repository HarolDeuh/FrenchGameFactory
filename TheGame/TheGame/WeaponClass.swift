//
//  WeaponClass.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

class Weapon {
    var name: String
    var attaque : Int
    
    init(name: String, attaque: Int) {
        self.name = name
        self.attaque = attaque
    }
}


// Je crée les armes
let monRandom = Int.random(in: 0 ..< 40)

let armeUn = Weapon(name: "Arme 1", attaque: monRandom)
let armeDeux = Weapon(name: "Arme 2", attaque: monRandom)
let armeTrois = Weapon(name: "Arme 3", attaque: monRandom)
let armeQuatre = Weapon(name: "Arme 4", attaque: monRandom)
let armeCinq = Weapon(name: "Arme 5", attaque: monRandom)
let armeSix = Weapon(name: "Arme 6", attaque: monRandom)
