//
// SFMsearchsetlistsAPI.swift
//


import Foundation
import Alamofire


open class SFMsearchsetlistsAPI {
    /**
     Search for setlists.

     - parameter artistMbid: (query) the artist&#x27;s Musicbrainz Identifier (mbid) (optional)
     - parameter artistName: (query) the artist&#x27;s name (optional)
     - parameter artistTmid: (query) the artist&#x27;s Ticketmaster Identifier (tmid) (optional)
     - parameter cityId: (query) the city&#x27;s geoId (optional)
     - parameter cityName: (query) the name of the city (optional)
     - parameter countryCode: (query) the country code (optional)
     - parameter date: (query) the date of the event (format dd-MM-yyyy) (optional)
     - parameter lastFm: (query) the event&#x27;s Last.fm Event ID (deprecated) (optional)
     - parameter lastUpdated: (query) the date and time (UTC) when this setlist was last updated (format yyyyMMddHHmmss) - either edited or reverted. search will return setlists that were updated on or after this date (optional)
     - parameter p: (query) the number of the result page (optional, default to 1)
     - parameter state: (query) the state (optional)
     - parameter stateCode: (query) the state code (optional)
     - parameter tourName: (query)  (optional)
     - parameter venueId: (query) the venue id (optional)
     - parameter venueName: (query) the name of the venue (optional)
     - parameter year: (query) the year of the event (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceSearchSetlistsGetSetlistsGET(artistMbid: String? = nil, artistName: String? = nil, artistTmid: Int? = nil, cityId: String? = nil, cityName: String? = nil, countryCode: String? = nil, date: String? = nil, lastFm: Int? = nil, lastUpdated: String? = nil, p: Int? = nil, state: String? = nil, stateCode: String? = nil, tourName: String? = nil, venueId: String? = nil, venueName: String? = nil, year: String? = nil, completion: @escaping ((_ data: JsonSetlists?,_ error: Error?) -> Void)) {
        resourceSearchSetlistsGetSetlistsGETWithRequestBuilder(artistMbid: artistMbid, artistName: artistName, artistTmid: artistTmid, cityId: cityId, cityName: cityName, countryCode: countryCode, date: date, lastFm: lastFm, lastUpdated: lastUpdated, p: p, state: state, stateCode: stateCode, tourName: tourName, venueId: venueId, venueName: venueName, year: year).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search for setlists.
     - GET /1.0/search/setlists

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
     - parameter artistMbid: (query) the artist&#x27;s Musicbrainz Identifier (mbid) (optional)
     - parameter artistName: (query) the artist&#x27;s name (optional)
     - parameter artistTmid: (query) the artist&#x27;s Ticketmaster Identifier (tmid) (optional)
     - parameter cityId: (query) the city&#x27;s geoId (optional)
     - parameter cityName: (query) the name of the city (optional)
     - parameter countryCode: (query) the country code (optional)
     - parameter date: (query) the date of the event (format dd-MM-yyyy) (optional)
     - parameter lastFm: (query) the event&#x27;s Last.fm Event ID (deprecated) (optional)
     - parameter lastUpdated: (query) the date and time (UTC) when this setlist was last updated (format yyyyMMddHHmmss) - either edited or reverted. search will return setlists that were updated on or after this date (optional)
     - parameter p: (query) the number of the result page (optional, default to 1)
     - parameter state: (query) the state (optional)
     - parameter stateCode: (query) the state code (optional)
     - parameter tourName: (query)  (optional)
     - parameter venueId: (query) the venue id (optional)
     - parameter venueName: (query) the name of the venue (optional)
     - parameter year: (query) the year of the event (optional)

     - returns: RequestBuilder<JsonSetlists> 
     */
    open class func resourceSearchSetlistsGetSetlistsGETWithRequestBuilder(artistMbid: String? = nil, artistName: String? = nil, artistTmid: Int? = nil, cityId: String? = nil, cityName: String? = nil, countryCode: String? = nil, date: String? = nil, lastFm: Int? = nil, lastUpdated: String? = nil, p: Int? = nil, state: String? = nil, stateCode: String? = nil, tourName: String? = nil, venueId: String? = nil, venueName: String? = nil, year: String? = nil) -> RequestBuilder<JsonSetlists> {
        let path = "/1.0/search/setlists"
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "artistMbid": artistMbid, 
                        "artistName": artistName, 
                        "artistTmid": artistTmid?.encodeToJSON(), 
                        "cityId": cityId, 
                        "cityName": cityName, 
                        "countryCode": countryCode, 
                        "date": date, 
                        "lastFm": lastFm?.encodeToJSON(), 
                        "lastUpdated": lastUpdated, 
                        "p": p?.encodeToJSON(), 
                        "state": state, 
                        "stateCode": stateCode, 
                        "tourName": tourName, 
                        "venueId": venueId, 
                        "venueName": venueName, 
                        "year": year
        ])


        let requestBuilder: RequestBuilder<JsonSetlists>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
