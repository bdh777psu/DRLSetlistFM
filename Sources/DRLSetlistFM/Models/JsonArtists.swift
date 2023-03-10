//
// JsonArtists.swift
//


import Foundation


/** A Result consisting of a list of artists. */

public struct JsonArtists: Codable {

    /** result list of artists */
    public var artist: [JsonArtist]?
    /** the total amount of items matching the query */
    public var total: Decimal?
    /** the current page. starts at 1 */
    public var page: Decimal?
    /** the amount of items you get per page */
    public var itemsPerPage: Decimal?

    public init(artist: [JsonArtist]? = nil, total: Decimal? = nil, page: Decimal? = nil, itemsPerPage: Decimal? = nil) {
        self.artist = artist
        self.total = total
        self.page = page
        self.itemsPerPage = itemsPerPage
    }


}
