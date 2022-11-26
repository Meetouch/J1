//
//  PositionPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - PositionPlainObject

/// @realm
struct PositionPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Position name
    let name: String
    
    /// Position price value
    let price: Double
    
    /// Position photo url
    let photo: URL
    
    /// Position nutritional values
    let nutritionalValues: [NutritionalValuePlainObject]
    
    /// Position additionals
    let additionals: [AdditionPlainObject]
}

// MARK: - Plain

extension PositionPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
