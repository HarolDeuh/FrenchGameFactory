//
//  main.swift
//  TheGame
//
//  Created by harold aholoukpe on 29/11/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

// Les pokemons Eau
carapuce.name = "Carapuce"
ptitard.name = "Ptitard"
ramoloss.name = "Ramolos"

// Les pokemons feu
salameche.name = "Salameche"
goupix.name = "Goupix"
caninos.name = "Caninos"

// les pokemons Plante
bulbizarre.name = "Bulbizarre"
chenipan.name = "Chenipan"
chetiflor.name = "Chetiflor"

// MARK: variables et fonctions pour lancer le jeu
//var state: GameState = .NewGame
var newPartie = Game()


// On crée les 2 joueurs de la partie
print("Joueur 1, veuillez entrer votre prenom")
let firstName = readLine(strippingNewline: true)!
print("Joueur 2, veuillez entrer votre prenom")
let secondName = readLine(strippingNewline: true)!

//Création des objets Player
let myPlayerOne = Player(name: firstName)
let myPlayerTwo = Player(name: secondName)


// MARK: variables texte console
var separateur = "------------------------------"
var separateur2 = "=============================="
let playersArray = [myPlayerOne, myPlayerTwo].shuffled()

newPartie.earlyGame(player1: myPlayerOne, player2: myPlayerTwo)
newPartie.midGame(player1: myPlayerOne, player2: myPlayerTwo)
newPartie.endGame(player1: myPlayerOne, player2: myPlayerTwo)
