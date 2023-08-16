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
                    
                    NavigationLink(destination: AppleMaps()) {
                        Image(systemName: "map.fill")
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
        }
    }
}





struct v: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
