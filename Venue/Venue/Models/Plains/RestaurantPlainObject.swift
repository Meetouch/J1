//
//  RestaurantPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 25.11.2022.
//

import SDAO

// MARK: - RestaurantPlainObject

/// @realm
struct RestaurantPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Restaurant name
    let name: String
    
    /// Average receipt
    let averageReceipt: Int
    
    /// Restaurant menus
    let menus: [MenuPlainObject]
    
    /// Restaurant staff
    let staff: [EmployeePlainObject]
    
    /// Restaurant location
    let coordinates: CoordinatesPlainObject
    
    /// Restaurant bookings
    let bookings: [BookingPlainObject]
    
    /// Restaurant tables
    let tables: [TablePlainObject]
}

// MARK: - Plain

extension RestaurantPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
