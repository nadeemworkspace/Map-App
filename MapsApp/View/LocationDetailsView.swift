//
//  LocationDetailsView.swift
//  MapsApp
//
//  Created by Muhammed Nadeem on 16/07/24.
//

import SwiftUI
import MapKit

struct LocationDetailsView: View {
    
    let location: Location
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                imageSection
                    .shadow(color: .black.opacity(0.3), radius: 20, y: 10)
                
                VStack(alignment: .leading, spacing: 16.0){

                    titleSection
                    
                    Divider()
                    
                    descriptionSection
                    
                    Divider()
                    
                    mapLayer
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(alignment: .topLeading) {
            Button{
                vm.sheetLocation = nil
            } label: {
                Image(systemName: "xmark")
                    .padding(16)
                    .frame(width: 30, height: 30)
                    .tint(.black)
                    .background(.ultraThickMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 4)
                    .padding()
            }
        }
    }
}

#Preview {
    LocationDetailsView(location: LocationsDataService.locations.first!)
        .environmentObject(LocationsViewModel())
}

extension LocationDetailsView {
    
    private var imageSection: some View{
        TabView{
            ForEach(location.imageNames, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
                
            }
        }
        .frame(height: 500)
        .tabViewStyle(.page)
    }
    
    private var titleSection: some View{
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.title3)
                .foregroundStyle(.secondary)
        }
    }
    
    private var descriptionSection: some View{
        VStack(alignment: .leading, spacing: 10) {
            Text(location.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            if let url = URL(string: location.link){
                Link("Read more on Wikipedia", destination: url)
                    .font(.headline)
                    .tint(.blue)
            }
        }
    }
    
    private var mapLayer: some View{
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationPinView()
                    .shadow(radius: 10)
            }}
            .aspectRatio(1, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .allowsHitTesting(false)
    }
    
}
