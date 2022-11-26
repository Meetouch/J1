//
//  MenuPlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - MenuPlainObject

/// @realm
public struct MenuPlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Menu name
    public let name: String
    
    /// Menu positions
    public let positions: [PositionPlainObject]
}

// MARK: - Plain

extension MenuPlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
