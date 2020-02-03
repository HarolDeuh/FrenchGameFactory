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
    
    // Method to set players name
    
    func setPlayerName() {
        print("Comment est-ce que tu t'appelles ?")
        
        let thename = Helper.waitForInputString()
        self.name = thename
    }
    
    // Method to set the character name
    
    func setCharacterName(_ character: Character) -> Character {
        print("Quel nom souhaites-tu me donner ?")
        
        let chrName = changeChrName()
        character.name = chrName
        
        return character
    }

    
    // MARK: Methods to create players's team
    
    func chrChoice() {
        
        let choice = Helper.waitForInputString()
        
        switch choice {
        case "1":
            print("\(Knight().intro) et nous vaincrons nos ennemis ensemble")
            addCharacterToTeam(Knight())
        case "2":
            print("\(Bowman().intro), allons ensemble vers la victoire")
            addCharacterToTeam(Bowman())
        case "3":
            print("\(Wizard().intro) et je suis fier d'intégrer ton équipe")
            addCharacterToTeam(Wizard())
        default:
            print("Tu dois choisir un personnage")
            print("(1) : Un chevalier, (2) : un archer, (3) : un magicien")
            chrChoice()
            
        }
        
    }
    
    private func addCharacterToTeam(_ character: Character) {
        let chr = self.setCharacterName(character)
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
            print("\(index + 1) \(chr.name!): \(chr.life) PV")
        }
        
        let caringChoice = Helper.waitForInputString()
        
        guard let ccInt = Int(caringChoice), isAvailable(ccInt) else {
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
            print("tu n'as pas choisis de personnage")
        }
        
    }
    
    func isStriking(_ who: Player) {
        print("Quel personnage souhaites-tu utliser pour ton attaque ?")
        
        for (index, chr) in self.team.enumerated() {
            print("\(index + 1) \(chr.name!) armé de \(chr.weapon.name) (\(chr.weapon.damage) ATT) ")
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
                print("\(index + 1) \(chrr.name!), \(chrr.life) PV")
            }
            
            if let defenderChoice = readLine() {
                
                guard let dcInt = Int(defenderChoice) else {
                    print("bug")
                    return
                }
                
                self.team[scInt - 1].strike(who.team[dcInt - 1])
                
                print("\(who.team[dcInt - 1].name!) a maintenant \(who.team[dcInt - 1].life) PV")
                
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
    
    private func isAvailable(_ check: Int) -> Bool {
        return team.count >= check
    }
    
    func changeChrName() -> String {
        var newName = ""
        repeat {
            newName = Helper.waitForInputString()
        } while checkArray(for: newName)
        
        Helper.stringArray.append(newName)
        
        return newName
    }
    
    func checkArray(for name: String) -> Bool {
        return Helper.stringArray.contains { character -> Bool in
            return character == name
        }
    }
    
    func getNewWeapon(for who: Character) {
        if who.name != nil {
            print("Tu as de la chance, \(who.name!) a trouvé un coffre avec une nouvelle arme")
        }
        who.changeWeapon()
        print("Cette arme possede \(who.weapon.damage) point d'attaque")
    }
    
}



