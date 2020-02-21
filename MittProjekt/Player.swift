//
//  Players.swift
//  MittProjekt
//
//  Created by Robert Sundin on 2020-02-12.
//  Copyright © 2020 Robert Sundin. All rights reserved.
//

import UIKit

class Player {
        
    var name: String?
    var score: Int
    
    init(name: String?, score: Int) {
        self.name = name
        self.score = score
    }
}


//tableview ärver från player klassen
