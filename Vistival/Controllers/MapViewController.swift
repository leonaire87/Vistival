//
//  MapViewController.swift
//  Vistival
//
//  Created by mobapp07 on 30/01/2020.
//  Copyright © 2020 mobapp07. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager.init()
    var data:DataSourceMap?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        data = DataSourceMap.init()
        mapView.addAnnotations(data!.items)    }
    
    @IBAction func switchMap(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: mapView.mapType = .standard
        case 1: mapView.mapType = .standard
        case 2: mapView.mapType = .standard
        default:print("dit is onmogelijk")
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
