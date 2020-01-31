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
        
        let stage1 = mapPoints.init(coordinate: CLLocationCoordinate2DMake(51.1284823,2.7480158), title: "Main Fishsquare", categorie: "Stage")
        items.append(stage1)
        
        let stage2 = mapPoints.init(coordinate: CLLocationCoordinate2DMake(51.1295823,2.7480158), title: "Fischer Price", categorie: "Stage")
        items.append(stage2)
        
        let stage3 = mapPoints.init(coordinate: CLLocationCoordinate2DMake(51.1274823,2.7490158), title: "Captain Iglo", categorie: "Stage" )
        items.append(stage3)
        
        let drankEetStand1 = mapPoints.init(coordinate:CLLocationCoordinate2DMake(51.1264916,2.7480158),title:"Dorst", categorie: "Food & Drinks")
        items.append(drankEetStand1)
        
         let drankEetStand2 = mapPoints.init(coordinate:CLLocationCoordinate2DMake(51.1254990,2.7480158),title:"Dorstiger", categorie: "Food & Drinks")
               items.append(drankEetStand2)
    }
}
