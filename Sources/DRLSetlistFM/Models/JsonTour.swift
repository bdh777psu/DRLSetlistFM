//
// JsonTour.swift
//


import Foundation


/** The tour a setlist was a part of. */

public struct JsonTour: Codable {

    /** The name of the tour. */
    public var name: String?

    public init(name: String? = nil) {
        self.name = name
    }


}
