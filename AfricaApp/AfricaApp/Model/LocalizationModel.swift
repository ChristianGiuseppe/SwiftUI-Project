//
//  LocalizationModel.swift
//  AfricaApp
//
//  Created by Christian Nocerino on 15/10/22.
//

import Foundation
import MapKit

struct LocalizationModel: Codable, Identifiable{
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude:    latitude, longitude: longitude)
    }
}
