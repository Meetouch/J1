//
//  TablePlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - TablePlainObject

/// @realm
public struct TablePlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Table number
    public let number: Int
    
    /// True if table is free
    public let isFree: Bool
}

// MARK: - Plain

extension TablePlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
