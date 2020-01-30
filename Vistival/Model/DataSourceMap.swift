//
//  DataSourceMap.swift
//  Vistival
//
//  Created by mobapp07 on 30/01/2020.
//  Copyright © 2020 mobapp07. All rights reserved.
//

import Foundation
import MapKit


class DataSourceMap {
    
    var items:[mapPoints]
    
    init() {
        items = [mapPoints]()
        
        let stage1 = mapPoints.init(coordinate: CLLocationCoordinate2DMake(51.1284823,2.7480158), tekst:  "Main Fishsquare")
        items.append(stage1)
        
        let stage2 = mapPoints.init(coordinate: CLLocationCoordinate2DMake(51.1274823,-2.7480158), tekst:  "Fischer Price")
        items.append(stage2)
        
        let stage3 = mapPoints.init(coordinate: CLLocationCoordinate2DMake(51.1264823,2.7480158), tekst:  "Capain Iglo")
        items.append(stage3)
        
    }
}
