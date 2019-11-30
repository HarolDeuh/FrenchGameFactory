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
print("Entrez vos prenoms")
let prenomUn = readLine()!
let prenomDeux = readLine()!
let  monJoueurUn = Player(name: prenomUn)
let monJoueurDeux = Player(name: prenomDeux)



func debutPartie() {
    print("Vous êtes le joueur 1. Votre nom est \(monJoueurUn.name)")
    monJoueurUn.team = [pikachu]
    
    print("Vous êtes le joueur 2. Votre nom est \(monJoueurDeux.name)")
    monJoueurDeux.team = [roucool]
    
    state = .InGame
    //milieuPartie()
}

func milieuPartie() {
    // le code
    print("On est en milieu de partie")
    
}

func finPartie() {
    // le code
}


/*let array = readLine()?
    .split {$0 == " "}
    .map (String.init)

if let stringArray = array {
    print(stringArray)
}*/



switch state {
    
case .NewGame:
    debutPartie()
case .InGame:
    milieuPartie()
case .EndGame:
    finPartie()
}






