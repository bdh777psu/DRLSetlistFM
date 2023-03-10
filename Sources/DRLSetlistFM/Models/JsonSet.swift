//
// JsonSet.swift
//


import Foundation


/** A setlist consists of different (at least one) sets. Sets can either be sets as defined in the &lt;a href&#x3D;\&quot;https://www.setlist.fm/guidelines\&quot;&gt;Guidelines&lt;/a&gt; or encores. */

public struct JsonSet: Codable {

    /** the description/name of the set. E.g. &lt;em&gt;&amp;quot;Acoustic set&amp;quot;&lt;/em&gt; or &lt;em&gt;&amp;quot;Paul McCartney solo&amp;quot;&lt;/em&gt; */
    public var name: String?
    /** if the set is an encore, this is the number of the encore, starting with 1 for the first encore, 2 for the second and so on. */
    public var encore: Decimal?
    /** this set&#x27;s songs */
    public var song: [JsonSong]?

    public init(name: String? = nil, encore: Decimal? = nil, song: [JsonSong]? = nil) {
        self.name = name
        self.encore = encore
        self.song = song
    }


}
