//
//  AdditionPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - AdditionPlainObject

/// @realm
public struct AdditionPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Additional name
    public let name: String
    
    /// Additional wight value
    public let weight: Double
    
    /// Additional price value
    public let price: Double
    
    /// Additional nutritional values
    public let nutritionalValues: [NutritionalValuePlainObject]
}

// MARK: - Plain

extension AdditionPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
