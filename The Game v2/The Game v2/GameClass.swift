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

    init(_ p1: Player, _ p2: Player) {
        self.playerOne = p1
        self.playerTwo = p2
    }
    
    func earlyGame() {
        
        print("Joueur 1 c'est a toi")
        playerOne.setName()
        print("Joueur 2 a ton tour")
        playerTwo.setName()
        
        guard playerOne.name != playerTwo.name else {
            print("vous avez le meme nom")
            return
        }
        
        playerOne.createTeam()
        playerTwo.createTeam()
    }
    
    
    func midGame() {
        print("On est dans la partie 2")
        self.gameRound()
    }
    
    
    
    func gameRound() {
        if playerOne.isDead() {
            print("Tu t'es bien battu")
            
        } else {
            print("\(playerOne.name!), c'est toi qui commence, que souhaites-tu faire ?")
            print("(1) Soigner un membre de ton équi[e, ou alors (2) attaquer un pokémon de ton adversaire ?")
        }
        
        
        guard playerOne.isDead() == false else {
            print("Tu t'es bien battu joueur 1")
            return
        }
        
        guard playerTwo.isDead() == false else {
            print("Tu t'es bien battu joueur 2")
            return
        }
        toDo(playerOne, playerTwo)
    }
    
    func toDo(_ att: Player, _ def: Player) {
        if let choix = readLine() {
            switch choix {
            case "1":
                att.isCaring()
            case "2":
                print("bla")
            default:
                print("blo")
            }
        }
    }
    
    
}

//func toDo(player1: Player, player2: Player) {
//    let choix = Int(readLine()!)!
//
//    if player1.team.isEmpty || player2.team.isEmpty {
//        newPartie.endGame(player1: player1, player2: player2)
//
//    } else {
//
//        switch choix {
//        case 1:
//            care(player: player1)
//        case 2:
//            attack(player1: player1, player2: player2)
//        default:
//            print("Tu n'as pas fait ton choix, que souhaites-tu faire ?")
//            print("(1) Soigner un membre de ton équipe ou alors (2) attaquer un pokémon de ton adversaire")
//            toDo(player1: player1, player2: player2)
//        }
//    }
//}






//func gameRound(myPlayerArray: [Player]) {
//
//    var nbrRandom = Int.random(in: 1...10)
//
//    if myPlayerArray[0].isDead() {
//        print("Tu t'es bien battu")
//        newPartie.endGame(player1: myPlayerArray[0], player2: myPlayerArray[1])
//
//    } else {
//
//        if nbrRandom == 7 {
//            evolution(joueur: myPlayerArray[0])
//            nbrRandom = Int.random(in: 1...15)
//        }
//        print("\(myPlayerArray[0].name), c'est toi qui commence, que souhaites-tu faire ?")
//        print("(1) Soigner un membre de ton équipe ou alors (2) attaquer un pokémon de \(myPlayerArray[1].name) ?")
//
//        toDo(player1: myPlayerArray[0], player2: myPlayerArray[1])
//    }
//
//    if myPlayerArray[1].team.isEmpty {
//        print("Tu t'es bien battu")
//
//    } else {
//
//        if nbrRandom == 7 {
//            // Le code
//            evolution(joueur: myPlayerArray[1])
//            nbrRandom = Int.random(in: 1...15)
//        }
//
//        print("\(myPlayerArray[1].name), à ton tour, que souhaites-tu faire ?")
//        print("(1) Soigner un membre de ton équipe ou alors (2) attaquer un pokémon de \(myPlayerArray[0].name) ?")
//        toDo(player1: myPlayerArray[1], player2: myPlayerArray[0])
//    }
//}


