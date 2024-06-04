//
//  MapView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 29/5/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.60028, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    // MARK: - BODY

    var body: some View {
        // MARK: - No1 Basic Map
        //Map(coordinateRegion: $region)
        
        // MARK: - No2 Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations,
            annotationContent: { item in
            // (A) Pin: old style (Static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) Marker: New Style (Static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) Custom basic annotation (interactive)
            MapAnnotation(coordinate: item.location){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            } //: Annotation
        })
    }
}

// MARK: - PREVIEW

#Preview {
    MapView()
}
