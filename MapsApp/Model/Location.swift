//
//  Location.swift
//  MapsApp
//
//  Created by Muhammed Nadeem on 15/07/24.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable{
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    var id: String{
        return name + cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.id == lhs.id
    }
}
