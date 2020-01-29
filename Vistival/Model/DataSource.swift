//
//  DataSource.swift
//  Vistival
//
//  Created by mobapp07 on 29/01/2020.
//  Copyright © 2020 mobapp07. All rights reserved.
//

import Foundation

class DataSource {
    
    var artiesten: [Artist]
    
    init() {
        artiesten = [Artist]()
        artiesten.append(Artist.init(naam: "Reel big fish", stage: "Main", day: 1, time: "15u30", beschrijving: "50 gouden platen en 40 weken op nr 1 in België"))
        artiesten.append(Artist.init(naam: "Swashbuckle", stage: "Fischer Price", day: 1, time: "17u30", beschrijving: "Uitgeroepen tot beste dj's ter wereld in 2019"))
        artiesten.append(Artist.init(naam: "Admiral freebie", stage: "Captain Iglo", day: 2, time: "16u00", beschrijving: "Wereldrecord beatboxen in 2018"))
    }
    
}
