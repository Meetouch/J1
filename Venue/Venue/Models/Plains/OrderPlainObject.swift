//
//  OrderPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - OrderPlainObject

/// @realm
struct OrderPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Order status
    let status: OrderStatus
    
    /// Order positions
    let positions: [PositionPlainObject]
    
    /// Order discount value
    let discount: Double?
    
    /// Order total price value
    let total: Double
    
    /// Order created date
    let createdAt: Date
}

// MARK: - Plain

extension OrderPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
