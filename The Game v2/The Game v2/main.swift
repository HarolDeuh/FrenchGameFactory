//
//  main.swift
//  The Game v2
//
//  Created by harold aholoukpe on 13/01/2020.
//  Copyright © 2020 harold aholoukpe. All rights reserved.
//

import Foundation

//player creation

var harold = Player()
var senan = Player()

var newgame = Game(harold, senan)

newgame.earlyGame()
newgame.midGame()
newgame.endGame()
