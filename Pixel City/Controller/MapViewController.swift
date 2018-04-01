//
//  ViewController.swift
//  Pixel City
//
//  Created by Žan Fras on 31/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    
    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var mapView: MKMapView!
    
    //MARK: - Properties
    /***************************************************************/
    var locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    let regionRadius: Double = 1000
    
    //MARK: - Methods
    /***************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        configureLocationServices()
    }
    
    //MARK: - Actions
    /***************************************************************/
    @IBAction func centerMapButtonPressed(_ sender: Any) {
        if authorizationStatus == .authorizedAlways || authorizationStatus == .authorizedWhenInUse {
            centerMapOnUserLocation()
        }
    }

}

//MARK: - MapView Extension
/***************************************************************/
extension MapViewController: MKMapViewDelegate {
    
    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else { return }
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
}

//MARK: - Location Extension
/***************************************************************/
extension MapViewController: CLLocationManagerDelegate {
    
    func configureLocationServices() {
        if authorizationStatus == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        centerMapOnUserLocation()
    }
    
}










