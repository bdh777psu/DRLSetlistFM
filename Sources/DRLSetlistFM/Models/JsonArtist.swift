//
// JsonArtist.swift
//


import Foundation


/** This class represents an artist. An artist is a musician or a group of musicians. Each artist has a definite &lt;a href&#x3D;\&quot;http://wiki.musicbrainz.org/MBID\&quot;&gt;Musicbrainz Identifier&lt;/a&gt; (MBID) with which the artist can be uniquely identified. */

public struct JsonArtist: Codable {

    /** unique Musicbrainz Identifier (MBID), e.g. &lt;em&gt;&amp;quot;b10bbbfc-cf9e-42e0-be17-e2c3e1d2600d&amp;quot;&lt;/em&gt; */
    public var mbid: String?
    /** unique Ticket Master Identifier (TMID), e.g. &lt;em&gt;735610&lt;/em&gt; */
    public var tmid: Decimal?
    /** the artist&#x27;s name, e.g. &lt;em&gt;&amp;quot;The Beatles&amp;quot;&lt;/em&gt; */
    public var name: String?
    /** the artist&#x27;s sort name, e.g. &lt;em&gt;&amp;quot;Beatles, The&amp;quot;&lt;/em&gt; or &lt;em&gt;&amp;quot;Springsteen, Bruce&amp;quot;&lt;/em&gt; */
    public var sortName: String?
    /** disambiguation to distinguish between artists with same names */
    public var disambiguation: String?
    /** the attribution url */
    public var url: String?

    public init(mbid: String? = nil, tmid: Decimal? = nil, name: String? = nil, sortName: String? = nil, disambiguation: String? = nil, url: String? = nil) {
        self.mbid = mbid
        self.tmid = tmid
        self.name = name
        self.sortName = sortName
        self.disambiguation = disambiguation
        self.url = url
    }


}
