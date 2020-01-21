//
//  Bowman.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Bowman: Character {
    init() {
        super.init("Je suis un archer", Weapon("L'arc", Int.random(in: 70...90)))
    }
}
