//
//  LocationPreviewView.swift
//  MapsApp
//
//  Created by Muhammed Nadeem on 16/07/24.
//

import Foundation
import SwiftUI

struct LocationPreviewView: View{
    
    let location: Location
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View{
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16.0){
                imageSection
                titleSection
            }
            
            VStack{
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPreviewView(location: LocationsDataService.locations.first!)
            .previewLayout(.sizeThatFits)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView {
    
    private var imageSection: some View{
        ZStack{
            if let image = location.imageNames.first{
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding(6)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    private var titleSection: some View{
        VStack(alignment: .leading, spacing: 4){
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View{
        Button{
            vm.sheetLocation = location
        } label: {
            Text("Learn More")
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View{
        Button{
            vm.nextButtonPressed()
        } label: {
            Text("Next")
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.bordered)
    }
    
}
