//
//  CoordinatesPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - CoordinatesPlainObject

/// @realm
public struct CoordinatesPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Latitude value
    public let latitude: Double
    
    /// Longitude value
    public let longitude: Double
}

// MARK: - Plain

extension CoordinatesPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
