//
// JsonCities.swift
//


import Foundation


/** A Result consisting of a list of cities. */

public struct JsonCities: Codable {

    /** result list of cities */
    public var cities: [JsonCity]?
    /** the total amount of items matching the query */
    public var total: Decimal?
    /** the current page. starts at 1 */
    public var page: Decimal?
    /** the amount of items you get per page */
    public var itemsPerPage: Decimal?

    public init(cities: [JsonCity]? = nil, total: Decimal? = nil, page: Decimal? = nil, itemsPerPage: Decimal? = nil) {
        self.cities = cities
        self.total = total
        self.page = page
        self.itemsPerPage = itemsPerPage
    }


}
