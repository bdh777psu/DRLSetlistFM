//
// JsonSetlists.swift
//


import Foundation


/** A Result consisting of a list of setlists. */

public struct JsonSetlists: Codable {

    /** result list of setlists */
    public var setlist: [JsonSetlist]?
    /** the total amount of items matching the query */
    public var total: Decimal?
    /** the current page. starts at 1 */
    public var page: Decimal?
    /** the amount of items you get per page */
    public var itemsPerPage: Decimal?

    public init(setlist: [JsonSetlist]? = nil, total: Decimal? = nil, page: Decimal? = nil, itemsPerPage: Decimal? = nil) {
        self.setlist = setlist
        self.total = total
        self.page = page
        self.itemsPerPage = itemsPerPage
    }


}
