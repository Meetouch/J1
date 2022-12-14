//
//  Optional.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import Foundation

// MARK: - Optional

extension Optional {

    func unwrap(_ hint: @autoclosure () -> String? = nil, file: StaticString = #file, line: UInt = #line) -> Wrapped {
        guard let unwrapped = self else {
            var message = "Required value was nil in \(file), at line \(line)"
            if let hint = hint() {
                message.append(". Debugging hint: \(hint)")
            }
            preconditionFailure(message)
        }
        return unwrapped
    }

    func unwrap(_ error: @autoclosure () -> Error, file: StaticString = #file, line: UInt = #line) -> Wrapped {
        guard let unwrapped = self else {
            var message = "Required value was nil in \(file), at line \(line)"
            message.append(". Debugging hint: \(error().localizedDescription)")
            preconditionFailure(message)
        }
        return unwrapped
    }

    func unwrap<T>(as type: T.Type, _ hint: @autoclosure () -> String? = nil, file: StaticString = #file, line: UInt = #line) -> T {
        guard let unwrapped = self as? T else {
            var message = "Cannot convert value to type '\(T.self)'"
            if let hint = hint() {
                message.append(". Debugging hint: \(hint)")
            }
            preconditionFailure(message)
        }
        return unwrapped
    }

    func unwrap<T>(as type: T.Type, _ error: @autoclosure () -> Error, file: StaticString = #file, line: UInt = #line) -> T {
        guard let unwrapped = self as? T else {
            var message = "Cannot convert value to type '\(T.self)'"
            message.append(". Debugging hint: \(error().localizedDescription)")
            preconditionFailure(message)
        }
        return unwrapped
    }
}
