//
//  BookingPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - BookingPlainObject

/// @realm
public struct BookingPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// True if booking is active
    public let isActive: Bool
    
    /// Booking date
    public let date: Date
    
    /// Reserver name
    public let reserverName: String
    
    /// Reserver mobile
    public let mobile: String
    
    /// Reserver email
    public let email: String?
    
    /// Booking table
    public let table: TablePlainObject
}

// MARK: - Plain

extension BookingPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
