//
//  LocationPinView.swift
//  MapsApp
//
//  Created by Muhammed Nadeem on 16/07/24.
//

import SwiftUI

struct LocationPinView: View {
    
    let accentColor = Color.accentColor
    
    var body: some View {
        VStack(spacing: 0){
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .padding(6)
                .background(accentColor)
                .clipShape(Circle())
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 14, height: 14)
                .foregroundStyle(accentColor)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .padding(.bottom, 40)
        }
    }
}

struct LocationPinView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPinView()
            .previewLayout(.sizeThatFits)
    }
}
