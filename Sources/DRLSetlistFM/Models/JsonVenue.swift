//
// JsonVenue.swift
//


import Foundation


/** Venues are places where concerts take place. They usually consist of a venue name and a city - but there are also some venues that do not have a city attached yet. In such a case, the city simply isn&#x27;t set and the city and country may (but do not have to) be in the name. */

public struct JsonVenue: Codable {

    public var city: JsonCity?
    /** the attribution url */
    public var url: String?
    /** unique identifier */
    public var _id: String?
    /** the name of the venue, usually without city and country. E.g. &lt;em&gt;&amp;quot;Madison Square Garden&amp;quot;&lt;/em&gt; or &lt;em&gt;&amp;quot;Royal Albert Hall&amp;quot;&lt;/em&gt; */
    public var name: String?

    public init(city: JsonCity? = nil, url: String? = nil, _id: String? = nil, name: String? = nil) {
        self.city = city
        self.url = url
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case city
        case url
        case _id = "id"
        case name
    }

}
