//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Mirim An on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate{
    
    var latitude:Double
    var longitude:Double
    
    init(latitude:Double, longitude:Double) {
        self.latitude = latitude
        self.longitude = longitude
    }

    
    var isInNorthernHemisphere:Bool {
        get{
            if latitude > 0 {
                return true
            }
            return false
        }
    }
    
    // ######## Computed properties #########
    //    var isInNorthernHemisphere:Bool {
    //        if latitude > 0.0 {
    //            return true
    //        }
    //        return false
    //    }

    var isInSoutherHemisphere:Bool {
        get{
            if latitude < 0 {
                return true
            }
            return false
        }
    }
    
    var isInWesternHemisphere:Bool {
        get{
            if longitude > 0 {
                return true
            }
            return false
        }
    }
    
    // ******** GET *************
    
    var isInEasternHemisphere:Bool {
        get{
            if longitude < 0 {
                return true
            }
            return false
        }
    }

    func distanceTo(coordinate:Coordinate)->Double{
       return( acos(sin(latitude.radians) * sin(coordinate.latitude.radians) + cos(latitude.radians) * cos(coordinate.latitude.radians) * cos((longitude.radians)-(coordinate.longitude.radians))) * 6371000 / 1000 )
    }
    
}

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
