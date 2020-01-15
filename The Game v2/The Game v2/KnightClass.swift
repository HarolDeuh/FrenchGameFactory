//
//  Knight.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Knight: Character {
    init() {
        super.init(isType: .knight,
                   "Je suis un chevalier",
                   Weapon("Excalibur", Int.random(in: 60...70)))
    }
    
    override func heal() {
        self.life += 40
    }
}
