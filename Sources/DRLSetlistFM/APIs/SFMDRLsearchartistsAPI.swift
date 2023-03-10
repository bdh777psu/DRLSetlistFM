//
// SFMsearchartistsAPI.swift
//


import Foundation
import Alamofire


open class SFMsearchartistsAPI {
    /**
     Search for artists.

     - parameter artistMbid: (query) the artist&#x27;s Musicbrainz Identifier (mbid) (optional)
     - parameter artistName: (query) the artist&#x27;s name (optional)
     - parameter artistTmid: (query) the artist&#x27;s Ticketmaster Identifier (tmid) (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional, default to 1)
     - parameter sort: (query) the sort of the result, either sortName (default) or relevance (optional, default to sortName)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceSearchArtistsGetArtistsGET(artistMbid: String? = nil, artistName: String? = nil, artistTmid: Int? = nil, p: Int? = nil, sort: String? = nil, completion: @escaping ((_ data: JsonArtists?,_ error: Error?) -> Void)) {
        resourceSearchArtistsGetArtistsGETWithRequestBuilder(artistMbid: artistMbid, artistName: artistName, artistTmid: artistTmid, p: p, sort: sort).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search for artists.
     - GET /1.0/search/artists

     - examples: [{contentType=application/json, example={
  "artist" : [ {
    "mbid" : "b10bbbfc-cf9e-42e0-be17-e2c3e1d2600d",
    "tmid" : 735610,
    "name" : "The Beatles",
    "sortName" : "Beatles, The",
    "disambiguation" : "John, Paul, George and Ringo",
    "url" : "https://www.setlist.fm/setlists/the-beatles-23d6a88b.html"
  }, {
    "mbid" : "...",
    "tmid" : 12345,
    "name" : "...",
    "sortName" : "...",
    "disambiguation" : "...",
    "url" : "..."
  } ],
  "total" : 42,
  "page" : 1,
  "itemsPerPage" : 20
}}]
     - parameter artistMbid: (query) the artist&#x27;s Musicbrainz Identifier (mbid) (optional)
     - parameter artistName: (query) the artist&#x27;s name (optional)
     - parameter artistTmid: (query) the artist&#x27;s Ticketmaster Identifier (tmid) (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional, default to 1)
     - parameter sort: (query) the sort of the result, either sortName (default) or relevance (optional, default to sortName)

     - returns: RequestBuilder<JsonArtists> 
     */
    open class func resourceSearchArtistsGetArtistsGETWithRequestBuilder(artistMbid: String? = nil, artistName: String? = nil, artistTmid: Int? = nil, p: Int? = nil, sort: String? = nil) -> RequestBuilder<JsonArtists> {
        let path = "/1.0/search/artists"
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "artistMbid": artistMbid, 
                        "artistName": artistName, 
                        "artistTmid": artistTmid?.encodeToJSON(), 
                        "p": p?.encodeToJSON(), 
                        "sort": sort
        ])


        let requestBuilder: RequestBuilder<JsonArtists>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
