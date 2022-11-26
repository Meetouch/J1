//
//  OrderStatus.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import Foundation

// MARK: - OrderStatus

public enum OrderStatus: Int {
    
    // MARK: - Cases
    
    case accepted = 0
    case preparing
    case served
}
