//
//  OrderPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - OrderPlainObject

/// @realm
public struct OrderPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Order status
    public let status: OrderStatus
    
    /// Order positions
    public let positions: [PositionPlainObject]
    
    /// Order discount value
    public let discount: Double
    
    /// Order created date
    public let createdAt: Date
    
    /// Order total price value
    var totalPrice: Double {
        positions.map(\.price).reduce(0, +)
    }
    
    /// Order total price with discount value
    var totalPriceWithDiscount: Double {
        totalPrice * discount
    }
}

// MARK: - Plain

extension OrderPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
