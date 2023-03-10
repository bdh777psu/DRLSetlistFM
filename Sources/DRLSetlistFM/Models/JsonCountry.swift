//
// JsonCountry.swift
//


import Foundation


/** This class represents a country on earth. */

public struct JsonCountry: Codable {

    /** The country&#x27;s &lt;a href&#x3D; \&quot;http://www.iso.org/iso/english_country_names_and_code_elements\&quot; &gt;ISO code&lt;/a&gt;. E.g. &lt;em&gt;&amp;quot;ie&amp;quot;&lt;/em&gt; for Ireland */
    public var code: String?
    /** The country&#x27;s name. Can be a localized name - e.g. &lt;em&gt;&amp;quot;Austria&amp;quot;&lt;/em&gt; or &lt;em&gt;&amp;quot;&amp;Ouml;sterreich&amp;quot;&lt;/em&gt; for Austria if the German name was requested. */
    public var name: String?

    public init(code: String? = nil, name: String? = nil) {
        self.code = code
        self.name = name
    }


}
