//
//  GameClass.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Game {
    
    
    var playerOne: Player
    var playerTwo: Player
    var nbrTour: Int = 0
    var players: [Player]?

    init(_ p1: Player, _ p2: Player) {
        self.playerOne = p1
        self.playerTwo = p2
    }
    
    func earlyGame() {
        
        print("Joueur 1 c'est a toi")
        playerOne.setName()
        print("Joueur 2 a ton tour")
        playerTwo.setName()
        
        if playerOne.name == playerTwo.name {
            print("vous avez le meme nom")
            repeat {
                print("Joueur 2 tu dois changer ton nom")
                playerTwo.setName()
            } while playerTwo.name == playerOne.name
        }
        
        playerOne.createTeam()
        playerTwo.createTeam()
    }
    
    
    func midGame() {
        while !playerOne.isDead() && !playerTwo.isDead() {
            self.gameRound()
        }
    }
    
    
    
    func gameRound() {
        
        guard !playerOne.isDead() else {
            print("Tu t'es bien battu joueur 1")
            
            return
        }
        
        guard !playerTwo.isDead() else {
            print("Tu t'es bien battu joueur 2")
            return
        }
        toDo(playerOne, playerTwo)
        
        if playerTwo.team.isEmpty || playerOne.team.isEmpty {
            print("C'est la fin de la partie")
        } else {
            toDo(playerTwo, playerOne)
        }
        
        
    }
    
    func toDo(_ att: Player, _ def: Player) {
        
        if att.team.isEmpty || def.team.isEmpty {
            print("Fin de partie")
        }
        
        
        print("\(att.name!), que souhaites-tu faire ?")
        print("(1) Soigner un membre de ton équipe, ou alors (2) attaquer un pokémon de ton adversaire ?")
        if let choix = readLine() {
            switch choix {
            case "1":
                att.isCaring()
            case "2":
                att.isStriking(def)
            default:
                print("blo")
            }
        }
    }
    
    
}
