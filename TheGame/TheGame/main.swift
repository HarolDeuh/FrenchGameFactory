//
//  main.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

// MARK: variables et fonctions pour lancer le jeu


var state: GameState = .NewGame

var newPartie = Game()





// On crée les 2 joueurs de la partie
print("Joueur 1, veuillez entrer votre prenom")
let prenomUn = readLine(strippingNewline: true)!
print("Joueur 2, veuillez entrer votre prenom")
let prenomDeux = readLine(strippingNewline: true)!

//Création des objets Player
let monJoueurUn = Player(name: prenomUn)
let monJoueurDeux = Player(name: prenomDeux)



// MARK: variables texte console
var separateur = "------------------------------"
var separateur2 = "=============================="
let tableauJoueur = [monJoueurUn, monJoueurDeux].shuffled()





// MARK: Début de partie
// On initialise le nouveau jeu


//func debutPartie() {
//    print("Joueur 1: \(monJoueurUn.name)")
//    print("Joueur 2: \(monJoueurDeux.name)")
//    print(separateur)
//
//    createTeam(joueur: monJoueurUn)
//    createTeam(joueur: monJoueurDeux)
//
//    print("Il y a \(monJoueurUn.team.count) pokemons dans l'equipe de \(monJoueurUn.name)")
//    print("Il y a \(monJoueurDeux.team.count) pokemons dans l'equipe de \(monJoueurDeux.name)")
//
//    print(separateur2)
//    print(separateur2)
//    
//}

newPartie.debutPartie(joueur1: monJoueurUn, joueur2: monJoueurDeux)
newPartie.milieuPartie(joueur1: monJoueurUn, joueur2: monJoueurDeux)
newPartie.finPartie(joueur1: monJoueurUn, joueur2: monJoueurDeux)

// MARK: Milieu de partie

func milieuPartie() {
    
    
    while !monJoueurUn.isDead() && !monJoueurDeux.isDead() {
        leTour(leTableau: tableauJoueur)
    }
    
    state = .EndGame
    
    //stateGame()
//    switch state {
//    case .NewGame:
//            debutPartie()
//    case .InGame:
//            milieuPartie()
//    case .EndGame:
//            finPartie()
//    }
    
    
}



// MARK: Fin de partie

//func finPartie() {
//    print(separateur2)
//    print("F I N   D E   P A R T I E")
//    print(separateur2)
//}


//func getState(s: GameState) {
//    switch s {
//    case .NewGame:
//            debutPartie()
//    case .InGame:
//            milieuPartie()
//    case .EndGame:
//            finPartie()
//    }
//}





/*
 pokemons dispo :
 
 pikachu
 roucool
 magicarpe
 reptincel
 abra
 ronflex
 */
