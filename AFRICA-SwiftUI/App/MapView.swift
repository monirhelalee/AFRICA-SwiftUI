//
//  MapView.swift
//  AFRICA-SwiftUI
//
//  Created by Monir Haider Helalee on 29/5/24.
//

import MapKit
import SwiftUI

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

        // Map(coordinateRegion: $region)

        // MARK: - No2 Advanced Map

        Map(coordinateRegion: $region, annotationItems: locations,
            annotationContent: { item in
                // (A) Pin: old style (Static)
                // MapPin(coordinate: item.location, tint: .accentColor)

                // (B) Marker: New Style (Static)
                // MapMarker(coordinate: item.location, tint: .accentColor)

                // (C) Custom basic annotation (interactive)
                // MapAnnotation(coordinate: item.location){
                // Image("logo")
                // .resizable()
                // .scaledToFit()
                // .frame(width: 32, height: 32, alignment: .center)
                // } //: Annotation
                // (D) Custom Advanced annotation (interactive)
                MapAnnotation(coordinate: item.location) {
                    MapAnnotationView(location: item)
                }
            }) //: MAP
            .overlay(
                HStack(alignment: .center, spacing: 12) {
                    Image("compass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 48, height: 48, alignment: .center)
                    VStack(alignment: .leading, spacing: 3){
                        HStack{
                            Text("Latitude:")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            Spacer()
                            Text("\(region.center.latitude)")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                        Divider()
                        HStack{
                            Text("Longitude:")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            Spacer()
                            Text("\(region.center.longitude)")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                    }
                } //: Hstack
                .padding(.vertical, 12)
                .padding(.horizontal, 12)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding(),
                alignment: .top
            )
    }
}

// MARK: - PREVIEW

#Preview {
    MapView()
}
