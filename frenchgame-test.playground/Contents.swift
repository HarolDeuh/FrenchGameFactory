import UIKit

enum GameState {
    case NewGame, InGame, EndGame
}

class Joueur {
    var name: String
    var team = [""]
    
    init(name: String) {
        self.name = name
    }
}


class Smackdown {
    var name: String
    var vie: Int = 100
    var arme: Arme
    
    
    init(name: String, arme: Arme) {
        self.name = name
        self.arme = arme
    }
}


class Arme {
    var name: String
    var attaque : Int
    
    init(name: String, attaque: Int) {
        self.name = name
        self.attaque = attaque
    }
}

var youCantSeeMee = Arme(name: "You Caan't see mee", attaque: 20)
var blabla = Arme(name: "le Blabla", attaque: 15)

var johncena = Smackdown(name: "John Cena", arme: youCantSeeMee)
var tripleH = Smackdown(name: "Triple H", arme: blabla)


print(johncena.arme.attaque)
print(johncena.vie - tripleH.arme.attaque)

