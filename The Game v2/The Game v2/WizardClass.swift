//
//  Wizard.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Wizard: Character {
    init() {
        super.init("Je suis un magicien", Weapon("Baguette magique", Int.random(in: 40...50)))
    }
    
    override func heal() {
        self.life += 40
    }
}
