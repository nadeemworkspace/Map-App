//
//  MapsAppApp.swift
//  MapsApp
//
//  Created by Muhammed Nadeem on 14/07/24.
//

import SwiftUI

@main
struct MapsAppApp: App {
    var body: some Scene {
        
        @StateObject var viewModel = LocationsViewModel()
        
        WindowGroup {
            LocationsView()
                .environmentObject(viewModel)
        }
    }
}
