//
//  AppleMaps.swift
//  navigationTool
//
//  Created by scholar on 8/16/23.
//

import SwiftUI
import MapKit
struct AppleMaps: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.712776, longitude: -74.005974), span: MKCoordinateSpan(latitudeDelta: 2.5, longitudeDelta: 2.5))
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
            .frame(width: 400, height: 300)
    }
}
struct mapsView_Previews: PreviewProvider {
    static var previews: some View {
        AppleMaps()
    }
}
struct AppleMaps_Previews: PreviewProvider {
    static var previews: some View {
        AppleMaps()
    }
}
