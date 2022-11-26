//
//  RestaurantPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 25.11.2022.
//

import SDAO

// MARK: - RestaurantPlainObject

/// @realm
public struct RestaurantPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Restaurant name
    public let name: String
    
    /// Average receipt
    public let averageReceipt: Int
    
    /// Restaurant menus
    public let menus: [MenuPlainObject]
    
    /// Restaurant staff
    public let staff: [EmployeePlainObject]
    
    /// Restaurant location
    public let coordinates: CoordinatesPlainObject
    
    /// Restaurant address
    public let address: String
    
    /// Restaurant bookings
    public let bookings: [BookingPlainObject]
    
    /// Restaurant tables
    public let tables: [TablePlainObject]
}

// MARK: - Plain

extension RestaurantPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
