//
//  EmployeePlainObject.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import SDAO

// MARK: - EmployeePlainObject

/// @realm
struct EmployeePlainObject {
    
    // MARK: - Properties
    
    /// Unique id
    let id: String
    
    /// Employee first name
    let firstName: String
    
    /// Employee middle name
    let middleName: String
    
    /// Employee last name
    let lastName: String
    
    /// Employee mobile number
    let mobile: String
    
    /// Employee email address
    let email: String
    
    /// Employee bio information
    let bio: String
    
    /// Employee regestration date
    let registeredDate: Date
    
    /// Employee type
    let type: EmployeeType
}

// MARK: - Plain

extension EmployeePlainObject: Plain {

    public var uniqueId: UniqueID {
        .init(rawValue: id)
    }
}
