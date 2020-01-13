import UIKit

class Weapon {
    var weaponName: String
    var damage: Int
    
    init (_ wn: String, _ dmg: Int ) {
        weaponName = wn
        damage = dmg
    }
}


class Sword: Weapon {
    init () {
        super.init("Excalibur", Int.random(in: 60...70))
    }
    
}

class Wand: Weapon {
    init() {
        super.init("Baguette magique", Int.random(in: 40...50))
    }
}

class TheBow: Weapon {
    
    init() {
        super.init("L'arc", Int.random(in: 65...90))
    }
}



class Character {
    enum CharacterType {
        case wizard, knight, bowman
    }
    
    var isType: CharacterType
    var characterName: String?
    var life: Int = 100
    var presentation: String
    var weapon: Weapon

    
    init(isType: CharacterType, _ pr: String = "Je suis un personnage", _ wp: Weapon) {
        self.isType = isType
        presentation = pr
        weapon = wp

    }
    
}

class Wizard: Character {
    init() {
        super.init(
            isType: .wizard,
            "Je suis un sorcier",
            Weapon("Baguette magique", Int.random(in: 40...50)))
    }
}


class Knight: Character {
    init() {
        super.init(isType: .knight,
                   "Je suis un chevalier",
                   Weapon("Excalibur", Int.random(in: 60...70)))
    }
}

class Bowman: Character {
    init() {
        super.init(isType: .bowman,
                   "Je suis un archer",
                   Weapon("L'arc", Int.random(in: 70...90)))
    }
}


var harry = Wizard()

print(harry.weapon.weaponName)
print(harry.weapon.damage)

var link = Knight()

print(link.weapon.weaponName)
print(link.weapon.damage)


var legolas = Bowman()

print(legolas.weapon.weaponName)
print(legolas.weapon.damage)
