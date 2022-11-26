//
//  EmployeePlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - EmployeePlainObject

/// @realm
public struct EmployeePlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    public let id: String
    
    /// Employee first name
    public let firstName: String
    
    /// Employee middle name
    public let middleName: String
    
    /// Employee last name
    public let lastName: String
    
    /// Employee mobile number
    public let mobile: String
    
    /// Employee email address
    public let email: String
    
    /// Employee bio information
    public let bio: String
    
    /// Employee regestration date
    public let registeredDate: Date
    
    /// Employee type
    public let type: EmployeeType
}

// MARK: - Plain

extension EmployeePlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
