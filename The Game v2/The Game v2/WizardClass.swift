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
        super.init(
            isType: .wizard,
            "Je suis un magicien",
            Weapon("Baguette magique", Int.random(in: 40...50)))
    }
}
