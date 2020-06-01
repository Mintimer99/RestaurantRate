//
//  PlaceModel.swift
//  RestaurantRate
//
//  Created by Минтимер Харасов on 01.06.2020.
//  Copyright © 2020 Минтимер Харасов. All rights reserved.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurants = ["KFC", "Burger King", "McDonalds", "Burger Heroes", "FARШ", "Краснодарский парень"]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        for place in restaurants {
            places.append(Place(name: place, location: "Уфа", type: "ФастФуд", image: place))
        }
        
        return places
        
    }
    
}
