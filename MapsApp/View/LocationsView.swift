//
//  LocationsView.swift
//  MapsApp
//
//  Created by Muhammed Nadeem on 15/07/24.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    private let widthForiPad: CGFloat = 700
    
    var body: some View {
        ZStack{

            mapLayer
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                
                header
                    .padding()
                    .frame(maxWidth: widthForiPad)
                
                Spacer()
                
                locationPreviewLayer
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailsView(location: location)
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}

extension LocationsView {
    
    private var header: some View {
        VStack{
            Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .overlay(alignment: .leading) {
                    Button(action: {
                        vm.toggleLocationList()
                    }, label: {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .tint(.black)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                    })
                }
            
            if vm.showLocationList{
                LocationListView()
            }
            
        }
        .background(.thickMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
    private var mapLayer: some View{
        Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationPinView()
                    .scaleEffect(vm.mapLocation.id == location.id ? 1.0 : 0.7)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        }
    }
    
    private var locationPreviewLayer: some View{
        ZStack{
            ForEach(vm.locations) { location in
                if vm.mapLocation.id == location.id {
                    LocationPreviewView(location: location)
                        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
                        .padding()
                        .frame(maxWidth: widthForiPad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
            }
        }
    }
    
}
