//
//  AssembliesHolder.swift
//  Venue
//
//  Created by Alexander Lezya on 26.11.2022.
//

import Swinject

// MARK: - AssembliesHolder

public final class AssembliesHolder {

    // MARK: - Properties

    /// Singleton container
    public static var container: Container {
        AssembliesHolder.instance.container
    }

    /// Private singleton instance
    private static let instance = AssembliesHolder()

    /// Global DI container
    private let container: Container

    // MARK: - Initializers

    /// Default initializer
    private init() {
        container = Container()
    }
}
