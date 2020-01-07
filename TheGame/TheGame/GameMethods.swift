//
//  GameMethods.swift
//  TheGame
//
//  Created by harold aholoukpe on 02/12/2019.
//  Copyright © 2019 harold aholoukpe. All rights reserved.
//

import Foundation

// Methode qui permet de créer les équipes des joueurs. 3 Pokémons par joueur
func createTeam(player: Player) {
    print("\(player.name), à ton tour")
    
    print("Tu peux choisir parmi :")
    
    for (index, pokemon) in pokemonArray.enumerated() {
        print("(\(index + 1))\(pokemon.name!) type : \(pokemon.type)")
    }
    
    for choice in 1...2 {
        print("Choisis un pokémon à ajouter a ton équipe (encore \(4 - choice))")
        let pokemon = readLine()!
        player.pokemonChoice(pokemon: pokemon)
        
    }
    print(separateur)
}




//Methode pour attaquer


func attack(player1: Player, player2: Player) {
    print("\(player1.name), quel pokemon souhaites-tu utiliser pour ton attaque (1, 2, 3)")
    print("Dans ton equipe il y a")

    for (index, pokemon) in player1.team.enumerated() {
        print(" \(index + 1) \(pokemon.name!): \(pokemon.damage) ATT")
    }

    let pokemonBonus = Int(readLine(strippingNewline: true)!)!

    print("Choisis le pokémon que tu souhaites attaquer (1, 2, 3)")
    print("L'équipe de \(player2.name) est composée de")

    for (index, pokemon) in player2.team.enumerated() {
        print(" \(index + 1) \(pokemon.name!): \(pokemon.life) PV")
    }
    let pokemonMalus = Int(readLine(strippingNewline: true)!)!

    print("\(player1.name): Ton pokemon \(player1.team[pokemonBonus - 1].name!) attaque le pokemon \(player2.team[pokemonMalus - 1].name!) ")

    player1.team[pokemonBonus - 1].charge(sufferer: player2.team[pokemonMalus - 1])

    //print("Il lui inflige \(joueur1.team[pokemonBonus - 1].damage) PV ")
    print("Le pokemon \(player2.team[pokemonMalus - 1].name!) a maintenant \(player2.team[pokemonMalus - 1].life) PV ")
    print(separateur)

    if player2.team[pokemonMalus - 1].life <= 0 {
        print("\(player2.team[pokemonMalus - 1].name!) est battu ! Il n'est plus disponible")

        player2.team.remove(at: pokemonMalus - 1)
        print("\(player2.name), il te reste \(player2.team.count) pokémons dispo")

        if player2.team.isEmpty {
            print("\(player2.name) tu n'as plus de pokemons disponible, tu as perdu")
        }
    }

}




// Methode pour soigner
func care(player: Player) {
    print("\(player.name): Tu as dans ton équipe \(player.team.count) pokemons")
    print("Choisis celui que tu souhaites soigner (1, 2 ou 3)")
    
    for (index, pokemon) in player.team.enumerated() {
        print(" \(index + 1) \(pokemon.name!): \(pokemon.life) PV")
    }
    
    let pokemonSoin = Int(readLine()!)!
    
    player.team[pokemonSoin - 1].life += 30
    print("Ton pokemon \(player.team[pokemonSoin - 1].name!) a maintenant \(player.team[pokemonSoin - 1].life) PV")
    print(separateur)
}

// Methode evolution

func evolution(joueur: Player) {
    let evol = joueur.team[Int.random(in:0...1)]
    evol.damage += 20
    evol.life += 30
    print("Oh ! \(joueur.name), ton pokemon \(evol.name!) évolue ! Il a maintenant \(evol.damage) ATT et \(evol.life) PV ")
    
}


// Methode pour organiser les tours
func gameRound(myPlayerArray: [Player]) {
    
    var nbrRandom = Int.random(in: 1...10)
    
    if myPlayerArray[0].isDead() {
        print("Tu t'es bien battu")
        newPartie.endGame(player1: myPlayerArray[0], player2: myPlayerArray[1])
        
    } else {
        
        if nbrRandom == 7 {
            // Le code
            evolution(joueur: myPlayerArray[0])
            nbrRandom = Int.random(in: 1...15)
        }
        print("\(myPlayerArray[0].name), c'est toi qui commence, que souhaites-tu faire ?")
        print("(1) Soigner un membre de ton équipe ou alors (2) attaquer un pokémon de \(myPlayerArray[1].name) ?")
        
        toDo(player1: myPlayerArray[0], player2: myPlayerArray[1])
    }
    
    if myPlayerArray[1].team.isEmpty {
        print("Tu t'es bien battu")
        
    } else {
        
        if nbrRandom == 7 {
            // Le code
            evolution(joueur: myPlayerArray[1])
            nbrRandom = Int.random(in: 1...15)
        }
        
        print("\(myPlayerArray[1].name), à ton tour, que souhaites-tu faire ?")
        print("(1) Soigner un membre de ton équipe ou alors (2) attaquer un pokémon de \(myPlayerArray[0].name) ?")
        toDo(player1: myPlayerArray[1], player2: myPlayerArray[0])
    }
    
}




// Methode pour choisir l'action
func toDo(player1: Player, player2: Player) {
    let choix = Int(readLine()!)!
    
    if player1.team.isEmpty || player2.team.isEmpty {
        newPartie.endGame(player1: player1, player2: player2)
        
    } else {
        
        switch choix {
        case 1:
            care(player: player1)
        case 2:
            attack(player1: player1, player2: player2)
        default:
            print("")
        }
    }

    
}
