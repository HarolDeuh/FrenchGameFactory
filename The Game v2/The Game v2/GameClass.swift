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
    var nbrRound: Int = 0
    var players: [Player]?
    
    
    
    

    init(_ p1: Player, _ p2: Player) {
        self.playerOne = p1
        self.playerTwo = p2
    }
    
    func earlyGame() {
        
        print("Joueur 1 c'est a toi")
        playerOne.setPlayerName()
        print("Joueur 2 a ton tour")
        playerTwo.setPlayerName()
        
        if playerOne.name == playerTwo.name {
            print("vous avez le meme nom")
            repeat {
                print("Joueur 2 tu dois changer ton nom")
                playerTwo.setPlayerName()
            } while playerTwo.name == playerOne.name
        }
        
        playerOne.createTeam()
        print(Helper.separator)
        
        playerTwo.createTeam()
        print(Helper.separator2)
    }
    
    
    func midGame() {
        while !playerOne.isDead() && !playerTwo.isDead() {
            self.gameRound()
            nbrRound += 1
        }
    }
    
    func endGame() {
        
        print(Helper.separator2)
        print("F I N   D E   P A R T I E")
        print("Vous avez effectué \(nbrRound) tours dans cette partie ")
        print(Helper.separator2)
    }
    
    func gameRound() {
        
        var nbrRandom = Int.random(in: 1...10)
        
        if nbrRandom == 7 {
            safeBox(p1: playerOne, p2: playerTwo)
            nbrRandom = Int.random(in: 1...15)
        }
        
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
    
    private func toDo(_ att: Player, _ def: Player) {
        
        if att.team.isEmpty || def.team.isEmpty {
            print("Fin de partie")
        }
        
        
        print("\(att.name!), que souhaites-tu faire ?")
        print("(1) Soigner un membre de ton équipe, ou alors (2) attaquer un personnage de ton adversaire ?")
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
    
    func safeBox(p1: Player, p2: Player) {
        let playersArray = [p1, p2].shuffled()
        let selectedPlayer = playersArray[0]
        let selectedCharacter = Int.random(in: 0...selectedPlayer.team.count)
        
        selectedPlayer.getNewWeapon(for: selectedPlayer.team[selectedCharacter])
    }
}
