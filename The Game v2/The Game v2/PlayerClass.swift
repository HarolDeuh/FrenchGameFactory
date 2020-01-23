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
    private var chrNames: [String] = [""]
    
    // Method to set players name
    func setName() {
        print("Comment est-ce que tu t'appelles ?")
        let thename = readLine()
        guard let name = thename, !name.isEmpty else {
            print("il faut rentrer un nom")
            return
        }
        
        self.name = thename
    }
    
    // Method to set the character name
    func setCN(_ chr: Character) -> Character {
        print("Quel nom souhaites-tu me donner ?")
        
        if let chrName = readLine() {
            
            if !nameAlreadyExist(chrName) {
                chr.characterName = chrName
            } else {
                print("Tu as déjà un personnage qui porte le même nom, choisis en un autre")
                if let secondname = readLine() {
                    chr.characterName = secondname
                }
            }
            
        } else {
            print("impossible de donner un nom")
        }
        
        return chr
    }
    
    
    // MARK: Methods to create players's team
    
    func chrChoice() {
    
        guard let choice = readLine() else {
            print("Ca ne fonctionne pas")
            return
        }
        
        switch choice {
        case "1":
            print("\(Knight().presentation) et nous vaincrons nos ennemis ensemble")
            addChr(Knight())
        case "2":
            print("\(Bowman().presentation), allons ensemble vers la victoire")
            addChr(Bowman())
        case "3":
            print("\(Wizard().presentation) et je suis fier d'intégrer ton équipe")
            addChr(Wizard())
        default:
            print("Tu dois choisir un personnage")
            print("(1) : Un chevalier, (2) : un archer, (3) : un magicien")
            chrChoice()
            
        }
        
    }
    
    private func addChr(_ obj: Character) {
        let chr = self.setCN(obj)
        self.team.append(chr)
    }
    
    
    func createTeam() {
        
        guard self.name != nil else {
            print("Tu n'as pas de nom")
            return
        }
        
        print("\(self.name!) a ton tour ")
        print("Quel type de personnage souhaites-tu ajouter à ton équipe ?")
        
        for _ in 1...2 {
            print("(1) : Un chevalier, (2) : un archer, (3) : un magicien")
            self.chrChoice()
            
        }
    }
    
    // MARK: Methods to manage game actions
    
    func isCaring() {
        print("Quel personnage souhaites-tu soigner ?")
        
        for (index, chr) in team.enumerated()  {
            print("\(index + 1) \(chr.characterName!): \(chr.life) PV")
        }
        
        if let caringChoice = readLine() {
            
            guard let ccInt = Int(caringChoice) else {
                print("bug")
                return
            }
            
            elementAvailable(ccInt)
            
            switch ccInt {
            case 1:
                elementAvailable(1-1)
                //team[0].heal()
            case 2:
                elementAvailable(2-1)
                //team[1].heal()
            case 3:
                elementAvailable(3-1)
                //team[2].heal()
            default:
                print("tu n'as pas choisis de personnage")
            }
        }
    }
    
    func isStriking(_ who: Player) {
        print("Quel personnage souhaites-tu utliser pour ton attaque ?")
        
        for (index, chr) in self.team.enumerated() {
            print("\(index + 1) \(chr.characterName!) armé de \(chr.weapon.weaponName) (\(chr.weapon.damage) ATT) ")
        }
        
        if let strikerChoice = readLine() {
            
            guard let scInt = Int(strikerChoice) else {
                print("bug")
                return
            }
            
            if !isAvailable(scInt) {
                print("tu n'as pas selectionné de personnage, choisis-en un pour continuer")
                
            }
            
            print("Choisis maintenant le personnage que tu souhaites attaquer")
            
            for (index, chrr) in who.team.enumerated() {
                print("\(index + 1) \(chrr.characterName!), \(chrr.life) PV")
            }
            
            if let defenderChoice = readLine() {
                
                guard let dcInt = Int(defenderChoice) else {
                    print("bug")
                    return
                }
                
                self.team[scInt - 1].strike(who.team[dcInt - 1])
                
                print("\(who.team[dcInt - 1].characterName!) a maintenant \(who.team[dcInt - 1].life) PV")
                
                if who.team[dcInt - 1].life <= 0 {
                    print("Ton personnage est mort")
                    who.team.remove(at: dcInt - 1)
                }
            }
        }
    }
    
    
    func isDead() -> Bool {
        return self.team.count == 0
    }
    
    private func nameAlreadyExist(_ testedname: String) -> Bool {
        var contains = false
        
        for name in chrNames {
            contains = (name == testedname)
        }
        
        chrNames.append(testedname)
        
        return contains
    }
    
    private func elementAvailable(_ check: Int) {
//        if team.count < check {
//            print("tu n'as pas selectionné de personnage, choisis-en un pour continuer")
//
//        }
        
        
        
        
    }
    
    private func isAvailable(_ check: Int) -> Bool {
        return team.count >= check
    }
     
}



