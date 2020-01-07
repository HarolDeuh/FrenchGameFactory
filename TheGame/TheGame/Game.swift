//
//  Game.swift
//  TheGame
//
//  Created by harold aholoukpe on 04/12/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

class Game {
    
    
    //var state: GameState = .NewGame
    var joueur1: Player?
    var joueur2: Player?
    var nbrTour: Int = 0
    
    func earlyGame(player1: Player, player2: Player) {
        
        print("Joueur 1: \(myPlayerOne.name)")
        print("Joueur 2: \(myPlayerTwo.name)")
        print(separateur)

        createTeam(player: myPlayerOne)
        createTeam(player: myPlayerTwo)
        
        print("Il y a \(myPlayerOne.team.count) pokemons dans l'equipe de \(myPlayerOne.name)")
        print("Il y a \(myPlayerTwo.team.count) pokemons dans l'equipe de \(myPlayerTwo.name)")
        
        print(separateur2)
        
        

    }
    
    func midGame(player1: Player, player2: Player) {
        
        while !player1.isDead() && !player2.isDead() {
            gameRound(myPlayerArray: playersArray)
            nbrTour += 1
        }
    }
    
    func endGame(player1: Player, player2: Player) {
        print(separateur2)
        print("F I N   D E   P A R T I E")
        print("Vous avez effectué \(nbrTour) tours dans cette partie ")
        print(separateur2)
    }
    
}
