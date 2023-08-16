//
//  ContentView.swift
//  navigationTool
//
//  Created by scholar on 8/16/23.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Eat For All")
                    .font(.headline)
                    .padding()
                
                Spacer()
            }
            .navigationBarTitle("Home")
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    
                    NavigationLink(destination: FavoriteView()) {
                        Image(systemName: "heart.fill")
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    NavigationLink(destination: SearchView()) {
                        Image(systemName: "magnifyingglass")
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    NavigationLink(destination: mapView()) {
                        Image(systemName: "map.fill")
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
        }
    }
}

    import MapKit
    struct mapView: View {
        @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.712776, longitude: -74.005974), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        var body: some View {
            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                .frame(width: 400, height: 300)
        }
    }
    struct mapsView_Previews: PreviewProvider {
        static var previews: some View {
            mapView()
        }
    }



struct v: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
