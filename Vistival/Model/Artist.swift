//
//  Artist.swift
//  Vistival
//
//  Created by mobapp07 on 29/01/2020.
//  Copyright © 2020 mobapp07. All rights reserved.
//

import Foundation

class Artist {
    
    var naam: String
    var stage: String
    var day: Int
    var time: String
    var beschrijving: String
    
    
    
    internal init(naam: String, stage: String, day: Int, time: String, beschrijving: String) {
        self.naam = naam
        self.stage = stage
        self.day = day
        self.time = time
        self.beschrijving = beschrijving
    }
    
    
    
    
}
