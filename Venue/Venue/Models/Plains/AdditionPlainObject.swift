//
//  AdditionPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - AdditionPlainObject

/// @realm
struct AdditionPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Additional name
    let name: String
    
    /// Additional wight value
    let weight: Double
    
    /// Additional price value
    let price: Double
    
    /// Additional nutritional values
    let nutritionalValues: [NutritionalValuePlainObject]
}

// MARK: - Plain

extension AdditionPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
