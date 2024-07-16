//
//  LocationListView.swift
//  MapsApp
//
//  Created by Muhammed Nadeem on 15/07/24.
//

import Foundation
import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List{
            ForEach(vm.locations) { location in
                Button{
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)

            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    LocationListView()
        .environmentObject(LocationsViewModel())
}

extension LocationListView {
    
    private func listRowView(_ location: Location) -> some View{
        HStack{
            if let image = location.imageNames.first{
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            
            VStack(alignment: .leading){
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
}
