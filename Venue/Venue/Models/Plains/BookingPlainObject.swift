//
//  BookingPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - BookingPlainObject

/// @realm
struct BookingPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// True if booking is active
    let isActive: Bool
    
    /// Booking date
    let date: Date
    
    /// Reserver name
    let reserverName: String
    
    /// Reserver mobile
    let mobile: String
    
    /// Reserver email
    let email: String?
    
    /// Booking table
    let table: TablePlainObject
}

// MARK: - Plain

extension BookingPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
