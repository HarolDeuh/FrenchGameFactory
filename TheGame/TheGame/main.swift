//
//  main.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

var state: GameState = .NewGame
print("Entrez votre prenom")

if state == .NewGame {
    let prenom = readLine()!
    print("Bonjour \(prenom) \n bienvenue sur le jeu Pokémon")
}









