//
//  NutritionalValuePlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - NutritionalValuePlainObject

/// @realm
public struct NutritionalValuePlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Nutritional value name
    public let name: String
    
    /// Nutritional value
    public let value: Double
}

// MARK: - Plain

extension NutritionalValuePlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
