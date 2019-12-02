//
//  main.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

// MARK: variables et fonctions pour lancer le jeu

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




// MARK: Début de partie
// On initialise le nouveau jeu


func debutPartie() {
    print("Joueur 1: \(monJoueurUn.name)")
    print("Joueur 2: \(monJoueurDeux.name)")
    print(separateur)

    createTeam(joueur: monJoueurUn)
    createTeam(joueur: monJoueurDeux)
    
    print("Il y a \(monJoueurUn.team.count) pokemons dans l'equipe de \(monJoueurUn.name)")
    print("Il y a \(monJoueurDeux.team.count) pokemons dans l'equipe de \(monJoueurDeux.name)")
    
    print(separateur2)
    print(separateur2)
    
    milieuPartie()
}

// MARK: Milieu de partie

func milieuPartie() {
    
    
    let harold = Player(name: "harold")
    let senan = Player(name: "senan")
    harold.team = [pikachu, roucool, abra]
    senan.team = [magicarpe, ronflex, reptincel]
    
    //leTour()
    
    while monJoueurUn.team.isEmpty != true || monJoueurDeux.team.isEmpty != true {
        leTour()
    }
    
    if monJoueurUn.team.isEmpty {
        print("\(monJoueurUn.name) tu n'as plus de pokemons disponible, tu as perdus")
    } else if monJoueurDeux.team.isEmpty {
        print("\(monJoueurDeux.name) tu n'as plus de pokemons disponible, tu as perdus")
    }
    
}

// MARK: Fin de partie

func finPartie() {
    print("Fin de match")
}

var state: GameState = .NewGame
switch state {
    
case .NewGame:
    debutPartie()
case .InGame:
    milieuPartie()
case .EndGame:
    finPartie()
}


/*
 pokemons dispo :
 
 pikachu
 roucool
 magicarpe
 reptincel
 abra
 ronflex
 */
