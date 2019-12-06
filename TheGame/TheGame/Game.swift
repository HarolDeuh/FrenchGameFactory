//
//  Game.swift
//  TheGame
//
//  Created by harold aholoukpe on 04/12/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

class Game {
    var state: GameState = .NewGame
    var joueur1: Player?
    var joueur2: Player?
    
    func debutPartie(joueur1: Player, joueur2: Player) {
        // code
    }
    
    func milieuPartie(joueur1: Player, joueur2: Player) {
        // code
    }
    
    func finPartie(joueur1: Player, joueur2: Player) {
        // code 
    }
    
    func checkState() {
        switch state {
        case .NewGame:
            TheGame.debutPartie()
        case .InGame:
            TheGame.milieuPartie()
        case .EndGame:
            TheGame.finPartie()
        }
    }
}
