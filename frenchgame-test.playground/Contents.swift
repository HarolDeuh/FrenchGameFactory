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



var link = Knight()




var legolas = Bowman()



var arrayTest = ["toto", "tata", "titi"]

//arrayTest.contains("tata")


 func checkArray(_ testedName: String) -> Bool {
    var contains = false
    
    for name in arrayTest {
        contains = (name == testedName)
    }
    
    //arrayTest.append(testedName)
    
    return contains
}


func nameAvailable(_ name:String) {
    
    if !checkTheArray(for: name) {
        print("c'est yes")
    } else {
        print("c'est non")
        print("il faut changer de nom")
        changeChrName()
    }
    
}

func checkTheArray(for name: String) -> Bool {
    return arrayTest.contains { character -> Bool in
        return character == name
    }
}

func changeChrName() {
    var i = 0
    repeat {
        print("on attend !")
        i += 1
        
    } while i == 2
}





var maVar = "toto"
var maVarDeux = "pupu"

var aragorn = Knight()

aragorn.characterName = "Aragorn"


func safebox(who: Character) {
    let newWeapon = Weapon("Arme en or", 100)
    
    who.weapon = newWeapon
}

func coffreFort() -> Weapon {
    let masterWeapon = Weapon("Arme en or", Int.random(in: 50...150))
    return masterWeapon
}

print("avant : \(aragorn.weapon.weaponName)")

aragorn.weapon = coffreFort()

print("apres : \(aragorn.weapon.weaponName)")
print(aragorn.weapon.damage)

