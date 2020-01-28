//
//  Helper.swift
//  The Game v2
//
//  Created by harold aholoukpe on 23/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

class Helper {
    
    static func waitForInputString() -> String {
        var str: String?
        
        repeat {
            str = inputString()
        } while str == nil
        
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
