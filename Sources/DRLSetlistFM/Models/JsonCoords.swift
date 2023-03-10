//
// JsonCoords.swift
//


import Foundation


/** Coordinates of a point on the globe. Mostly used for Cities. */

public struct JsonCoords: Codable {

    /** The longitude part of the coordinates. */
    public var long: Decimal?
    /** The latitude part of the coordinates. */
    public var lat: Decimal?

    public init(long: Decimal? = nil, lat: Decimal? = nil) {
        self.long = long
        self.lat = lat
    }


}
