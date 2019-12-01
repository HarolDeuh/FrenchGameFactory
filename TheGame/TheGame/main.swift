//
//  main.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

// On initialise le nouveau jeu
var state: GameState = .NewGame

// On crée les 2 joueurs de la partie
print("Bonjour.")

print("Joueur 1, veuillez entrer votre prenom")
let prenomUn = readLine(strippingNewline: true)!

print("Joueur 2, veuillez entrer votre prenom")
let prenomDeux = readLine(strippingNewline: true)!


//Création des objets Player
let monJoueurUn = Player(name: prenomUn)
let monJoueurDeux = Player(name: prenomDeux)
//print(monJoueurUn.team)

func debutPartie() {
    print("Vous êtes le joueur 1. Votre nom est \(monJoueurUn.name)")
    print("Vous êtes le joueur 2. Votre nom est \(monJoueurDeux.name)")
    
    for choice in 1...3 {
        print("Choisissez les pokémons de votre équipe (encore \(4 - choice))")
        let pokemon = readLine()!
        choixPokemon(pokemon: pokemon)
    }
    
    state = .InGame
    milieuPartie()
}

func milieuPartie() {
    
    //coupDeBoule(attaquant: monJoueurUn.team[pikachu], defense: monJoueurDeux.team[roucool])
    
    //let pokemon = readLine()!
    //choixPokemon(pokemon: pokemon)
    
    
 
    print(monJoueurUn.team)
    
    
    
    
    
}

func choixPokemon(pokemon: String) -> String {
    // le code
    print("Entrez le nom de vos persos")
    switch pokemon {
    case "pikachu":
        monJoueurUn.team.append(pikachu)
    case "roucool":
        monJoueurUn.team.append(roucool)
    case "magicarpe":
        monJoueurUn.team.append(magicarpe)
    case "reptincel":
        monJoueurUn.team.append(reptincel)
    case "abra":
        monJoueurUn.team.append(abra)
    case "ronflex":
        monJoueurUn.team.append(ronflex)
    default:
        print("rien a ajouter")
    }
    
    return pokemon
}


func coupDeBoule(attaquant: Character, defense: Character) {
    
    defense.vie = defense.vie -  attaquant.weapon.attaque
    print(defense.vie)
}

switch state {
    
case .NewGame:
    debutPartie()
case .InGame:
    milieuPartie()
case .EndGame:
    print("Le code")
}
