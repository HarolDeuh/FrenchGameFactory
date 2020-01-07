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

newPartie.debutPartie(joueur1: monJoueurUn, joueur2: monJoueurDeux)
newPartie.milieuPartie(joueur1: monJoueurUn, joueur2: monJoueurDeux)
newPartie.finPartie(joueur1: monJoueurUn, joueur2: monJoueurDeux)
