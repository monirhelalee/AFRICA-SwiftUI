//
//  LocatiionModel.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 4/6/24.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    var id, name, image : String
    var latitude, longitude : Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
