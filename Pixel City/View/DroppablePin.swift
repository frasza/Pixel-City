//
//  DroppablePin.swift
//  Pixel City
//
//  Created by Žan Fras on 01/04/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
}
