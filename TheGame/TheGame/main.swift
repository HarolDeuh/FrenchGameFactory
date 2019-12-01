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


// Methode qui permet de créer les équipes des joueurs. 3 Pokémons par joueur
func createTeam(joueur: Player) {
    print("\(joueur.name), À votre tour")
    
    for choice in 1...3 {
        print("Choisissez les pokémons de votre équipe (encore \(4 - choice))")
        let pokemon = readLine()!
        //choixPokemon(pokemon: pokemon)
        monJoueurUn.choixPokemon(pokemon: pokemon)
        
    }
    print(separateur)
}

//Methode pour attaquer
func coupDeBoule(attaquant: Character, defense: Character) {
    
    defense.vie = defense.vie -  attaquant.weapon.attaque
    print(defense.vie)
}


// MARK: variables texte console
var separateur = "------------------------------"
var separateur2 = "=============================="




// MARK: On lance la partie
// On initialise le nouveau jeu



func debutPartie() {
    print("Joueur 1: \(monJoueurUn.name)")
    print("Joueur 2: \(monJoueurDeux.name)")
    print(separateur)

    createTeam(joueur: monJoueurUn)
    createTeam(joueur: monJoueurDeux)
    
    milieuPartie()
}
    

func milieuPartie() {
    print(separateur2)
    print(monJoueurUn.team.count)
    print(monJoueurDeux.team.count)
    
    
}

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
 pokemons dispo pour le jeu :
 
 pikachu
 roucool
 magicarpe
 reptincel
 abra
 ronflex
 */
