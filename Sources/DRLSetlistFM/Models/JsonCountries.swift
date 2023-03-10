//
// JsonCountries.swift
//


import Foundation


/** A Result consisting of a list of countries. */

public struct JsonCountries: Codable {

    /** result list of countries */
    public var country: [JsonCountry]?
    /** the total amount of items matching the query */
    public var total: Decimal?
    /** the current page. starts at 1 */
    public var page: Decimal?
    /** the amount of items you get per page */
    public var itemsPerPage: Decimal?

    public init(country: [JsonCountry]? = nil, total: Decimal? = nil, page: Decimal? = nil, itemsPerPage: Decimal? = nil) {
        self.country = country
        self.total = total
        self.page = page
        self.itemsPerPage = itemsPerPage
    }


}
