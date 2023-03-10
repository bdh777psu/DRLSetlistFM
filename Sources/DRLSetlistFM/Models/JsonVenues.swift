//
// JsonVenues.swift
//


import Foundation


/** A Result consisting of a list of venues. */

public struct JsonVenues: Codable {

    /** result list of venues */
    public var venue: [JsonVenue]?
    /** the total amount of items matching the query */
    public var total: Decimal?
    /** the current page. starts at 1 */
    public var page: Decimal?
    /** the amount of items you get per page */
    public var itemsPerPage: Decimal?

    public init(venue: [JsonVenue]? = nil, total: Decimal? = nil, page: Decimal? = nil, itemsPerPage: Decimal? = nil) {
        self.venue = venue
        self.total = total
        self.page = page
        self.itemsPerPage = itemsPerPage
    }


}
