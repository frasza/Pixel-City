//
//  Constants.swift
//  Pixel City
//
//  Created by Žan Fras on 02/04/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import Foundation

let API_KEY = "8d92fd87081f0a85c84699cbc1638a3f"

func flickrURL(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    
    return url
}
