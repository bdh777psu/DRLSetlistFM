//
// JsonSetlist.swift
//


import Foundation


/** Setlists, that&#x27;s what it&#x27;s all about. So if you&#x27;re trying to use this API without knowing what a setlist is then you&#x27;re kinda wrong on this page ;-).  A setlist can be distinguished from other setlists by its unique id. But as &lt;a href&#x3D;\&quot;https://www.setlist.fm/\&quot;&gt;setlist.fm&lt;/a&gt; works the wiki way, there can be different versions of one setlist (each time a user updates a setlist a new version gets created). These different versions have a unique id on its own. So setlists can have the same id although they differ as far as the content is concerned - thus the best way to check if two setlists are the same is to compare their versionIds. */

public struct JsonSetlist: Codable {

    public var artist: JsonArtist?
    public var venue: JsonVenue?
    public var tour: JsonTour?
    /** all sets of this setlist */
    public var _set: [JsonSet]?
    /** additional information on the concert - see the &lt;a href&#x3D;\&quot;https://www.setlist.fm/guidelines\&quot;&gt;setlist.fm guidelines&lt;/a&gt; for a complete list of allowed content. */
    public var info: String?
    /** the attribution url to which you have to link to wherever you use data from this setlist in your application */
    public var url: String?
    /** unique identifier */
    public var _id: String?
    /** unique identifier of the version */
    public var versionId: String?
    /** the id this event has on &lt;a href&#x3D;\&quot;http://last.fm/\&quot;&gt;last.fm&lt;/a&gt; (deprecated) */
    public var lastFmEventId: Decimal?
    /** date of the concert in the format &amp;quot;dd-MM-yyyy&amp;quot; */
    public var eventDate: String?
    /** date, time and time zone of the last update to this setlist in the format &amp;quot;yyyy-MM-dd&#x27;T&#x27;HH:mm:ss.SSSZZZZZ&amp;quot; */
    public var lastUpdated: String?

    public init(artist: JsonArtist? = nil, venue: JsonVenue? = nil, tour: JsonTour? = nil, _set: [JsonSet]? = nil, info: String? = nil, url: String? = nil, _id: String? = nil, versionId: String? = nil, lastFmEventId: Decimal? = nil, eventDate: String? = nil, lastUpdated: String? = nil) {
        self.artist = artist
        self.venue = venue
        self.tour = tour
        self._set = _set
        self.info = info
        self.url = url
        self._id = _id
        self.versionId = versionId
        self.lastFmEventId = lastFmEventId
        self.eventDate = eventDate
        self.lastUpdated = lastUpdated
    }

    public enum CodingKeys: String, CodingKey { 
        case artist
        case venue
        case tour
        case _set = "set"
        case info
        case url
        case _id = "id"
        case versionId
        case lastFmEventId
        case eventDate
        case lastUpdated
    }

}
