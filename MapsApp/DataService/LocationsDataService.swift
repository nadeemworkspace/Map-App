//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Louvre Museum",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
             name: "Statue of Liberty",
             cityName: "New York",
             coordinates: CLLocationCoordinate2D(latitude: 40.6892, longitude: -74.0445),
             description: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor within New York City, in the United States.",
             imageNames: [
                 "nyc-liberty-1",
                 "nyc-liberty-2",
                 "nyc-liberty-3"
             ],
             link: "https://en.wikipedia.org/wiki/Statue_of_Liberty"
         ),
         Location(
             name: "Great Wall of China",
             cityName: "Beijing",
             coordinates: CLLocationCoordinate2D(latitude: 40.4319, longitude: 116.5704),
             description: "The Great Wall of China is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe.",
             imageNames: [
                 "beijing-greatwall-1",
                 "beijing-greatwall-2",
                 "beijing-greatwall-3"
             ],
             link: "https://en.wikipedia.org/wiki/Great_Wall_of_China"
         ),
         Location(
             name: "Machu Picchu",
             cityName: "Cusco Region",
             coordinates: CLLocationCoordinate2D(latitude: -13.1631, longitude: -72.5450),
             description: "Machu Picchu is a 15th-century Inca citadel located in the Eastern Cordillera of southern Peru on a mountain ridge 2,430 meters above sea level.",
             imageNames: [
                 "cusco-machu-1",
                 "cusco-machu-2",
                 "cusco-machu-3"
             ],
             link: "https://en.wikipedia.org/wiki/Machu_Picchu"
         ),
         Location(
             name: "Sydney Opera House",
             cityName: "Sydney",
             coordinates: CLLocationCoordinate2D(latitude: -33.8568, longitude: 151.2153),
             description: "The Sydney Opera House is a multi-venue performing arts centre in Sydney. Located on the banks of the Sydney Harbour, it is one of the 20th century's most famous and distinctive buildings.",
             imageNames: [
                 "sydney-opera-1",
                 "sydney-opera-2",
                 "sydney-opera-3"
             ],
             link: "https://en.wikipedia.org/wiki/Sydney_Opera_House"
         ),
         Location(
             name: "Christ the Redeemer",
             cityName: "Rio de Janeiro",
             coordinates: CLLocationCoordinate2D(latitude: -22.9519, longitude: -43.2105),
             description: "Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil. Created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa.",
             imageNames: [
                 "rio-redeemer-1",
                 "rio-redeemer-2",
                 "rio-redeemer-3"
             ],
             link: "https://en.wikipedia.org/wiki/Christ_the_Redeemer_(statue)"
         ),
         Location(
             name: "Taj Mahal",
             cityName: "Agra",
             coordinates: CLLocationCoordinate2D(latitude: 27.1751, longitude: 78.0421),
             description: "The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan to house the tomb of his favorite wife, Mumtaz Mahal.",
             imageNames: [
                 "agra-tajmahal-1",
                 "agra-tajmahal-2",
                 "agra-tajmahal-3"
             ],
             link: "https://en.wikipedia.org/wiki/Taj_Mahal"
         )
    ]
    
}
