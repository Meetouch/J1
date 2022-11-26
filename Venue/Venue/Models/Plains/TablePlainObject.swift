//
//  TablePlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - TablePlainObject

/// @realm
struct TablePlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Table number
    let number: Int
    
    /// True if table is free
    let isFree: Bool
}

// MARK: - Plain

extension TablePlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
