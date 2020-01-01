import UIKit

// J'ai 3 types de pokemons : eau, plante, feu

// eau > feu
// feu > plante
// plante > eau





class Pokemon {
    
    enum PokemonType {
        case eau, plante, feu
    }
    
    
    var type: PokemonType
    var vie: Int = 100
    var damage: Int = 20
    
    init(type: PokemonType) {
        self.type = type
        
        switch type {
        case .eau:
            print("Pokemon Eau")
        case .feu:
            print("Pokemon Feu")
        case .plante:
            print("Pokemon Plante")
        }
    }
    
    func charge(victime: Pokemon) -> Int {
        // Le code
        victime.vie -= self.damage
        return victime.vie
    }
}


class PokemonEau: Pokemon {
    
    init() {
        super.init(type: .eau)
    }
    
    override func charge(victime: Pokemon) -> Int {
        
        switch victime.type {
            
        case .feu:
            victime.vie -= (damage + 20)
            print("attaque tres efficace")
        case .plante:
            victime.vie -= (damage / 4)
            print("attaque sans trop d'effet")
        default:
            victime.vie -= self.damage
            print("attaque normal")
        }
        
        
        return victime.vie
    }
}

class PokemonFeu: Pokemon {
    init() {
        super.init(type: .feu)
    }
    
    override func charge(victime: Pokemon) -> Int {
           
           switch victime.type {
               
           case .plante:
               victime.vie -= (damage + 20)
               print("attaque tres efficace")
           case .eau:
               victime.vie -= (damage / 4)
               print("attaque sans trop d'effet")
           default:
            victime.vie -= self.damage
               print("attaque normal")
           }
        
           return victime.vie
       }
    
    
}

class PokemonPlante: Pokemon {
    init() {
        super.init(type: .plante)
    }
    
    override func charge(victime: Pokemon) -> Int {
        switch victime.type {
        case .eau:
            victime.vie -= (damage + 20)
            print("attaque tres efficace")
        case .feu:
            victime.vie -= (damage / 4)
            print("attaque sans trop d'effet")
        default:
            victime.vie -= self.damage
            print("attaque normal")
        }
        
        return victime.vie
    }
    
}

var magicarpe = PokemonEau()
var carapuce = PokemonEau()
var salameche = PokemonFeu()
var bulbizarre = PokemonPlante()

magicarpe.vie
carapuce.charge(victime: magicarpe)
magicarpe.vie

salameche.vie
carapuce.charge(victime: salameche)
salameche.vie
