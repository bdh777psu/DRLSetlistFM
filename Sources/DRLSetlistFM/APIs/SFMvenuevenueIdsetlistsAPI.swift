//
// SFMvenuevenueIdsetlistsAPI.swift
//


import Foundation
import Alamofire


open class SFMvenuevenueIdsetlistsAPI {
    /**
     .

     - parameter venueId: (path) the id of the venue 
     - parameter p: (query) the number of the result page (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceVenueVenueIdSetlistsGetVenueSetlistsGET(venueId: String, p: Int? = nil, completion: @escaping ((_ data: JsonSetlists?,_ error: Error?) -> Void)) {
        resourceVenueVenueIdSetlistsGetVenueSetlistsGETWithRequestBuilder(venueId: venueId, p: p).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     .
     - GET /1.0/venue/{venueId}/setlists

     - examples: [{contentType=application/json, example={
  "setlist" : [ {
    "artist" : {
      "mbid" : "b10bbbfc-cf9e-42e0-be17-e2c3e1d2600d",
      "tmid" : 735610,
      "name" : "The Beatles",
      "sortName" : "Beatles, The",
      "disambiguation" : "John, Paul, George and Ringo",
      "url" : "https://www.setlist.fm/setlists/the-beatles-23d6a88b.html"
    },
    "venue" : {
      "city" : { },
      "url" : "https://www.setlist.fm/venue/compaq-center-san-jose-ca-usa-6bd6ca6e.html",
      "id" : "6bd6ca6e",
      "name" : "Compaq Center"
    },
    "tour" : {
      "name" : "North American Tour 1964"
    },
    "set" : [ {
      "name" : "...",
      "encore" : 12345,
      "song" : [ { }, { } ]
    }, {
      "name" : "...",
      "encore" : 12345,
      "song" : [ { }, { } ]
    } ],
    "info" : "Recorded and published as 'The Beatles at the Hollywood Bowl'",
    "url" : "https://www.setlist.fm/setlist/the-beatles/1964/hollywood-bowl-hollywood-ca-63de4613.html",
    "id" : "63de4613",
    "versionId" : "7be1aaa0",
    "eventDate" : "23-08-1964",
    "lastUpdated" : "2013-10-20T05:18:08.000+0000"
  }, {
    "artist" : {
      "mbid" : "...",
      "tmid" : 12345,
      "name" : "...",
      "sortName" : "...",
      "disambiguation" : "...",
      "url" : "..."
    },
    "venue" : {
      "city" : { },
      "url" : "...",
      "id" : "...",
      "name" : "..."
    },
    "tour" : {
      "name" : "..."
    },
    "set" : [ {
      "name" : "...",
      "encore" : 12345,
      "song" : [ { }, { } ]
    }, {
      "name" : "...",
      "encore" : 12345,
      "song" : [ { }, { } ]
    } ],
    "info" : "...",
    "url" : "...",
    "id" : "...",
    "versionId" : "...",
    "eventDate" : "...",
    "lastUpdated" : "..."
  } ],
  "total" : 42,
  "page" : 1,
  "itemsPerPage" : 20
}}]
     - parameter venueId: (path) the id of the venue 
     - parameter p: (query) the number of the result page (optional, default to 1)

     - returns: RequestBuilder<JsonSetlists> 
     */
    open class func resourceVenueVenueIdSetlistsGetVenueSetlistsGETWithRequestBuilder(venueId: String, p: Int? = nil) -> RequestBuilder<JsonSetlists> {
        var path = "/1.0/venue/{venueId}/setlists"
        let venueIdPreEscape = "\(venueId)"
        let venueIdPostEscape = venueIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{venueId}", with: venueIdPostEscape, options: .literal, range: nil)
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "p": p?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<JsonSetlists>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
