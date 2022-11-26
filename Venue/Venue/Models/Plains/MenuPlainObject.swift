//
//  MenuPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - MenuPlainObject

/// @realm
struct MenuPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Menu name
    let name: String
    
    /// Menu positions
    let positions: [PositionPlainObject]
}

// MARK: - Plain

extension MenuPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
