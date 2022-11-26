//
//  CoordinatesPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - CoordinatesPlainObject

/// @realm
struct CoordinatesPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Latitude value
    let latitude: Double
    
    /// Longitude value
    let longitude: Double
}

// MARK: - Plain

extension CoordinatesPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
