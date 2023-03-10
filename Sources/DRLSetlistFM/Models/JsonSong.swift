//
// JsonSong.swift
//


import Foundation


/** This class represents a song that is part of a Set. */

public struct JsonSong: Codable {

    /** The name of the song. E.g. &lt;em&gt;Yesterday&lt;/em&gt; or &lt;em&gt;&amp;quot;Wish You Were Here&amp;quot;&lt;/em&gt; */
    public var name: String?
    public var with: JsonArtist?
    public var cover: JsonArtist?
    /** Special incidents or additional information about the way the song was performed at this specific concert. See the &lt;a href&#x3D;\&quot;https://www.setlist.fm/guidelines\&quot;&gt;setlist.fm guidelines&lt;/a&gt; for a complete list of allowed content. */
    public var info: String?
    /** The song came from tape rather than being performed live. See the &lt;a href&#x3D;\&quot;https://www.setlist.fm/guidelines#tape-songs\&quot;&gt;tape section of the guidelines&lt;/a&gt; for valid usage. */
    public var tape: Bool?

    public init(name: String? = nil, with: JsonArtist? = nil, cover: JsonArtist? = nil, info: String? = nil, tape: Bool? = nil) {
        self.name = name
        self.with = with
        self.cover = cover
        self.info = info
        self.tape = tape
    }


}
