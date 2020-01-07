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
    var nbrTour: Int = 0
    
    func debutPartie(joueur1: Player, joueur2: Player) {
        
        print("Joueur 1: \(monJoueurUn.name)")
        print("Joueur 2: \(monJoueurDeux.name)")
        print(separateur)

        createTeam(joueur: monJoueurUn)
        createTeam(joueur: monJoueurDeux)
        
        print("Il y a \(monJoueurUn.team.count) pokemons dans l'equipe de \(monJoueurUn.name):  \(monJoueurUn.team[0].name!), \(monJoueurUn.team[1].name!)")
        print("Il y a \(monJoueurDeux.team.count) pokemons dans l'equipe de \(monJoueurDeux.name):  \(monJoueurDeux.team[0].name!), \(monJoueurDeux.team[1].name!)")
        
        print(separateur2)
        

    }
    
    func milieuPartie(joueur1: Player, joueur2: Player) {
        
        while !joueur1.isDead() && !joueur2.isDead() {
            leTour(leTableau: tableauJoueur)
            nbrTour += 1
        }
    }
    
    func finPartie(joueur1: Player, joueur2: Player) {
        print(separateur2)
        print("F I N   D E   P A R T I E")
        print("Vous avez effectué \(nbrTour) tours dans cette partie ")
        print(separateur2)
    }
    
}
