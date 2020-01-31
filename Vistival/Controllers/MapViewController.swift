//
//  MapViewController.swift
//  Vistival
//
//  Created by mobapp07 on 30/01/2020.
//  Copyright © 2020 mobapp07. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    let locationManager = CLLocationManager.init()
    var data:DataSourceMap?
    
    let initialLocation = CLLocation(latitude: 51.128123, longitude: 2.748022)
    let searchRadius: CLLocationDistance = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        data = DataSourceMap.init()
        mapView.addAnnotations(data!.items)
        
        mapView.delegate = self
        let coordinateRegion = MKCoordinateRegion.init(center: initialLocation.coordinate, latitudinalMeters: searchRadius*2.0, longitudinalMeters: searchRadius*2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    @IBAction func switchMap(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: mapView.mapType = .standard
        for item in data!.items{
            if item.categorie == "Stage" {
                mapView.addAnnotation(item)
            }
            }
        
            
        case 1: mapView.mapType = .standard
            for item in data!.items{
            if item.categorie == "Food & Drinks"{
                mapView.addAnnotation(item)
            }
            }
        
        default:print("dit is onmogelijk")
            
        }
    }
}
