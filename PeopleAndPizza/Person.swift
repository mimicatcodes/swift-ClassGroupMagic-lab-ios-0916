//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Mirim An on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person{
    var firsrtName:String
    var lastName:String
    var home:Coordinate
    var isHungry:Bool
    
    init(firstName:String, lastName:String, home:Coordinate) {
        self.firsrtName = firstName
        self.lastName = lastName
        self.home = home
        isHungry = true
    }
    
    func eatPizzaFrom(service:PizzaDeliveryService)->Bool{
        if isHungry == true && service.isInRange(destination: home) {
            isHungry = false
            return true
        }
            return false
    }
}

