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
        print("Joueur 1: \(monJoueurUn.name)")
        print("Joueur 2: \(monJoueurDeux.name)")
        print(separateur)

        createTeam(joueur: monJoueurUn)
        createTeam(joueur: monJoueurDeux)
        
        print("Il y a \(monJoueurUn.team.count) pokemons dans l'equipe de \(monJoueurUn.name)")
        print("Il y a \(monJoueurDeux.team.count) pokemons dans l'equipe de \(monJoueurDeux.name)")
        
        print(separateur2)
        print(separateur2)
        
        //milieuPartie()
        self.milieuPartie(joueur1: joueur1, joueur2: joueur2)
    }
    
    func milieuPartie(joueur1: Player, joueur2: Player) {
        // code
//        while !monJoueurUn.isDead() && !monJoueurDeux.isDead() {
//            leTour(leTableau: tableauJoueur)
//        }
        
        while !joueur1.isDead() && !joueur2.isDead() {
            leTour(leTableau: tableauJoueur)
        }
    }
    
    func finPartie(joueur1: Player, joueur2: Player) {
        // code
        print(separateur2)
        print("F I N   D E   P A R T I E")
        print(separateur2)
    }
    
//    func checkState() {
//        switch state {
//        case .NewGame:
//            TheGame.debutPartie()
//        case .InGame:
//            TheGame.milieuPartie()
//        case .EndGame:
//            TheGame.finPartie()
//        }
//    }
}
