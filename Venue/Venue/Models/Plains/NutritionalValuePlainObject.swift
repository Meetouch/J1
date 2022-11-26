//
//  NutritionalValuePlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - NutritionalValuePlainObject

/// @realm
struct NutritionalValuePlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Nutritional value name
    let name: String
    
    /// Nutritional value
    let value: Double
}

// MARK: - Plain

extension NutritionalValuePlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
