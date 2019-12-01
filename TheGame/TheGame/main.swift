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
        joueur.choixPokemon(pokemon: pokemon)
        
    }
    print(separateur)
}

//Methode pour attaquer
func attaque(joueur: Player, attaquant: Character, defense: Character) {
    defense.vie = defense.vie -  attaquant.weapon.attaque
    print(defense.vie)
}

func soin(joueur: Player, pokemon: Character) {
    // Je veux soigner mon pokemon
    print("Vous avez dans votre équipe \(joueur.team.count) pokemons")
    print("Choisissez le pokémon que vous souhaitez soigner (1, 2 ou 3)")
    print("Dans votre equipe il y a")
    
    for (index, pokemon) in joueur.team.enumerated() {
        print(" \(index + 1) \(pokemon.name): \(pokemon.vie) PV")
    }
    
    let pokemonSoin = Int(readLine()!)!
    
    joueur.team[pokemonSoin - 1].vie += 30
    print("Votre pokemon \(joueur.team[pokemonSoin - 1].name) a maintenant \(joueur.team[pokemonSoin - 1].vie) PV")
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
    //print("Il y a \(monJoueurUn.team.count) pokemons dans l'equipe de \(monJoueurUn.name)")
    //print("Il y a \(monJoueurDeux.team.count) pokemons dans l'equipe de \(monJoueurDeux.name)")
    var harold = Player(name: "harold")
    var senan = Player(name: "senan")
    
    harold.team = [pikachu, roucool, abra]
    senan.team = [magicarpe, ronflex, reptincel]
    
    soin(joueur: harold, pokemon: harold.team[0])
    
    
}

func finPartie() {
    print("Fin de match")
}

var state: GameState = .InGame
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
