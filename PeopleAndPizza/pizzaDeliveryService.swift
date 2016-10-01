//
//  pizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Mirim An on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService{
    var location:Coordinate
    var pizzasAvailable:Int
    
    init(location:Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(destination:Coordinate)->Bool{
        if destination.distanceTo(coordinate: destination) <= 5000.00 {
            return true
        }
            return false
    }
    
    func deliverPizzaTo(destination:Coordinate)->Bool{
        if isInRange(destination: destination) {
            pizzasAvailable -= 1
            return true
        } else if pizzasAvailable == 0 {
            return false
        } else {
            return false
        }
    }


}
