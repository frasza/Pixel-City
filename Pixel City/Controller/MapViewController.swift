//
//  ViewController.swift
//  Pixel City
//
//  Created by Žan Fras on 31/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var mapView: MKMapView!
    
    //MARK: - Methods
    /***************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    /***************************************************************/
    @IBAction func centerMapButtonPressed(_ sender: Any) {
        
    }

}

//MARK: - MapView Extension
/***************************************************************/
extension MapViewController: MKMapViewDelegate {
    
    
    
}
