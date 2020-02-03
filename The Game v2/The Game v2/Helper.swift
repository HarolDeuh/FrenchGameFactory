//
//  Helper.swift
//  The Game v2
//
//  Created by harold aholoukpe on 23/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Helper {
    
    static var stringArray = ["string"]
    
    // Constants to separate differents steps in the game
    static let separator = "------------------------------"
    static let separator2 = "=============================="
    
    static func waitForInputString() -> String {
        var str: String?
        
        repeat {
            str = inputString()
        } while str == nil || str == ""
        
        if let str = str {
            return str
        }
        return " "
    }
    
    static func inputString() -> String? {
        if let result = readLine() {
            return result
        }
        return nil
    }
}


//static func waitForInput(condition: ClosedRange<Int>) -> Int {         var choice: Int         repeat {             choice = self.input()         } while !condition.contains(choice)                  return choice     }
