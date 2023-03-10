//
// JsonCity.swift
//


import Foundation


/** This class represents a city where Venues are located. Most of the original city data was taken from &lt;a href&#x3D;\&quot;http://geonames.org/\&quot;&gt;Geonames.org&lt;/a&gt;. */

public struct JsonCity: Codable {

    /** unique identifier */
    public var _id: String?
    /** the city&#x27;s name, depending on the language valid values are e.g. &lt;em&gt;&amp;quot;M&amp;uuml;chen&amp;quot;&lt;/em&gt; or &lt;em&gt;Munich&lt;/em&gt; */
    public var name: String?
    /** The code of the city&#x27;s state. For most countries this is a two-digit numeric code, with which the state can be identified uniquely in the specific Country. The code can also be a String for other cities. Valid examples are &lt;em&gt;&amp;quot;CA&amp;quot;&lt;/em&gt; or &lt;em&gt;&amp;quot;02&amp;quot;&lt;/em&gt;  which in turn get uniquely identifiable when combined with the state&#x27;s country:  &lt;em&gt;&amp;quot;US.CA&amp;quot;&lt;/em&gt; for California, United States or &lt;em&gt;&amp;quot;DE.02&amp;quot;&lt;/em&gt; for Bavaria, Germany  For a complete list of available states (that aren&#x27;t necessarily used in this database) is available in &lt;a href&#x3D; \&quot;http://download.geonames.org/export/dump/admin1CodesASCII.txt\&quot;&gt;a textfile on geonames.org&lt;/a&gt;.  Note that this code is only unique combined with the city&#x27;s Country. The code alone is &lt;strong&gt;not&lt;/strong&gt; unique. */
    public var stateCode: String?
    /** The name of city&#x27;s state, e.g. &lt;em&gt;&amp;quot;Bavaria&amp;quot;&lt;/em&gt; or &lt;em&gt;&amp;quot;Florida&amp;quot;&lt;/em&gt; */
    public var state: String?
    public var coords: JsonCoords?
    public var country: JsonCountry?

    public init(_id: String? = nil, name: String? = nil, stateCode: String? = nil, state: String? = nil, coords: JsonCoords? = nil, country: JsonCountry? = nil) {
        self._id = _id
        self.name = name
        self.stateCode = stateCode
        self.state = state
        self.coords = coords
        self.country = country
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case stateCode
        case state
        case coords
        case country
    }

}
