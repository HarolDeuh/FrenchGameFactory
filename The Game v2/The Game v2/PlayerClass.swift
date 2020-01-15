//
//  PlayerClass.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.

import Foundation

class Player {
    var name: String?
    var team = [Character]()
    
    
    func setName() {
        print("Comment est-ce que tu t'appelles ?")
        let thename = readLine()
        guard thename?.isEmpty == false else {
            print("il faut rentrer un nom")
            return
        }
        self.name = thename
    }
    
    func setCN(_ chr: Character) {
        print("Il faut donner un nom a ton perso")
        
        if let chrName = readLine() {
            chr.characterName = chrName
        } else {
            print("impossible de donner un nom")
        }
    }
    
    func createTeam() {
        guard self.name != nil else {
            print("Tu n'as pas de nom")
            return
        }
        
        
        print("\(self.name!) a ton tour ")
        print("Quel type de personnage souhaites-tu ajouter à ton équipe ?")
        
        for _ in 1...3 {
            print("(1) : Un chevalier, (2) : un archer, (3) : un magicien")
            
            self.chrChoice()
        }
    }
    
    func isCaring() {
        print("Qui veut tu soigner ?")
        
        for (index, chr) in team.enumerated()  {
            print("\(index + 1) \(chr.characterName!): \(chr.life) PV")
        }
        
        if let caringChoice = readLine() {
            
            guard let ccInt = Int(caringChoice) else {
                print("bug")
                return
            }
            
            switch ccInt {
            case 1:
                team[0].heal()
            case 2:
                team[1].heal()
            case 3:
                team[2].heal()
            default:
                print("db")
            }
        }
    }
    
    
    func chrChoice() {
        guard let choice = readLine() else {
            print("Ca ne fonctionne pas")
            return
        }
        switch choice {
        case "1":
            self.team.append(Knight())
            print("\(Knight().presentation) et je suis fier de faire partie de ton équipe")
            self.setCN(Knight())
        case "2":
            self.team.append(Bowman())
            print("\(Bowman().presentation) et je suis fier de faire partie de ton equipe")
            self.setCN(Bowman())
        case "3":
            self.team.append(Wizard())
            print("\(Wizard().presentation) et je suis fier de faire partie de ton equipe")
            self.setCN(Wizard())
        default:
            print("ca ne marche pas")
        }
    }
    
    
    
    func isDead() -> Bool {
        return self.team.count == 0
    }
     
}

