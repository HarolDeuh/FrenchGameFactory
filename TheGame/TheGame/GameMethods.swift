//
//  GameMethods.swift
//  TheGame
//
//  Created by harold aholoukpe on 02/12/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

// Methode qui permet de créer les équipes des joueurs. 3 Pokémons par joueur
func createTeam(joueur: Player) {
    print("\(joueur.name), À votre tour")
    
    for choice in 1...1 {
        print("Choisissez les pokémons de votre équipe (encore \(4 - choice))")
        let pokemon = readLine()!
        joueur.choixPokemon(pokemon: pokemon)
        
    }
    print(separateur)
}




//Methode pour attaquer
func attaque(joueur1: Player, joueur2:Player) {
    print("\(joueur1.name), quel pokemon souhaites-tu utiliser pour ton attaque (1, 2, 3)")
    print("Dans votre equipe il y a")
    
    for (index, pokemon) in joueur1.team.enumerated() {
        print(" \(index + 1) \(pokemon.name): \(pokemon.weapon.attaque) ATT")
    }
    
    let pokemonBonus = Int(readLine(strippingNewline: true)!)!
    
    print("Choisis le pokémon que tu souhaites attaquer (1, 2, 3)")
    print("L'équipe de \(joueur2.name) est composée de")
    
    for (index, pokemon) in joueur2.team.enumerated() {
        print(" \(index + 1) \(pokemon.name): \(pokemon.vie) PV")
    }
    let pokemonMalus = Int(readLine(strippingNewline: true)!)!
    
    print("\(joueur1.name): Votre pokemon \(joueur1.team[pokemonBonus - 1].name) attaque le pokemon \(joueur2.team[pokemonMalus - 1].name) ")
    
    joueur2.team[pokemonMalus - 1].vie -=  joueur1.team[pokemonBonus - 1].weapon.attaque
    print("Il lui inflige \(joueur1.team[pokemonBonus - 1].weapon.attaque) PV ")
    print("Le pokemon \(joueur2.team[pokemonMalus - 1].name) a maintenant \(joueur2.team[pokemonMalus - 1].vie) PV ")
    print(separateur)
    
    if joueur2.team[pokemonMalus - 1].vie < 0 {
        print("\(joueur2.team[pokemonMalus - 1].name) est battu ! Il n'est plus disponible")
        
        joueur2.team.remove(at: pokemonMalus - 1)
        print("\(joueur2.name), il te reste \(joueur2.team.count) pokémons dispo")
        
        if joueur2.team.isEmpty {
            print("\(joueur2.name) tu n'as plus de pokemons disponible, tu as perdus")
        }
    }
}


// Methode pour soigner
func soin(joueur: Player) {
    print("\(joueur.name): Vous avez dans votre équipe \(joueur.team.count) pokemons")
    print("Choisissez celui que vous souhaitez soigner (1, 2 ou 3)")
    //print("Dans votre equipe il y a")
    
    for (index, pokemon) in joueur.team.enumerated() {
        print(" \(index + 1) \(pokemon.name): \(pokemon.vie) PV")
    }
    
    let pokemonSoin = Int(readLine()!)!
    
    joueur.team[pokemonSoin - 1].vie += 30
    print("Votre pokemon \(joueur.team[pokemonSoin - 1].name) a maintenant \(joueur.team[pokemonSoin - 1].vie) PV")
    print(separateur)
}


// Methode pour organiser les tours
func leTour(leTableau: [Player]) {
    
    if leTableau[0].isDead() {
        print("Tu t'es bien battu")
        //finPartie()
        newPartie.finPartie(joueur1: leTableau[0], joueur2: leTableau[1])
        
    } else {
        print("\(leTableau[0].name), c'est toi qui commence, que souhaites-tu faire ?")
        print("(1) Soigner un membre de ton équipe ou alors (2) attaquer un pokémon de \(leTableau[1].name) ?")
        
        queFaire(joueur1: leTableau[0], joueur2: leTableau[1])
    }
    
    if leTableau[1].team.isEmpty {
        print("Tu t'es bien battu")
        
    } else {
        print("\(leTableau[1].name), à ton tour, que souhaites-tu faire ?")
        print("(1) Soigner un membre de ton équipe ou alors (2) attaquer un pokémon de \(leTableau[0].name) ?")
        queFaire(joueur1: leTableau[1], joueur2: leTableau[0])
    }
    
}




// Methode pour choisir l'action
func queFaire(joueur1: Player, joueur2: Player) {
    let choix = Int(readLine()!)!
    
    if joueur1.team.isEmpty || joueur2.team.isEmpty {
        //finPartie()
        newPartie.finPartie(joueur1: joueur1, joueur2: joueur2)
        
        
    } else {
        
        switch choix {
        case 1:
            soin(joueur: joueur1)
        case 2:
            attaque(joueur1: joueur1, joueur2: joueur2)
        default:
            print(" ")
        }
    }

    
}
