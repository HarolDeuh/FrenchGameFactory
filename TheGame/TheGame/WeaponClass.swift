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


let armeUn = Weapon(name: "Arme 1", attaque: Int.random(in: 0 ..< 40))
let armeDeux = Weapon(name: "Arme 2", attaque: Int.random(in: 0 ..< 40))
let armeTrois = Weapon(name: "Arme 3", attaque: Int.random(in: 0 ..< 40))
let armeQuatre = Weapon(name: "Arme 4", attaque: Int.random(in: 0 ..< 40))
let armeCinq = Weapon(name: "Arme 5", attaque: Int.random(in: 0 ..< 40))
let armeSix = Weapon(name: "Arme 6", attaque: Int.random(in: 0 ..< 40))
