//
//  PositionPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - PositionPlainObject

/// @realm
public struct PositionPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Position name
    public let name: String
    
    /// Position price value
    public let price: Double
    
    /// Position photo url
    public let photo: URL
    
    /// Position nutritional values
    public let nutritionalValues: [NutritionalValuePlainObject]
    
    /// Position additionals
    public let additionals: [AdditionPlainObject]
}

// MARK: - Plain

extension PositionPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
