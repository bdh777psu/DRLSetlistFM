//
// SFMsetlistversionversionIdAPI.swift
//


import Foundation
import Alamofire


open class SFMsetlistversionversionIdAPI {
    /**
     .

     - parameter versionId: (path) the version id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceSetlistVersionVersionIdGetSetlistVersionGET(versionId: String, completion: @escaping ((_ data: JsonSetlist?,_ error: Error?) -> Void)) {
        resourceSetlistVersionVersionIdGetSetlistVersionGETWithRequestBuilder(versionId: versionId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     .
     - GET /1.0/setlist/version/{versionId}

     - examples: [{contentType=application/json, example={
  "artist" : {
    "mbid" : "b10bbbfc-cf9e-42e0-be17-e2c3e1d2600d",
    "tmid" : 735610,
    "name" : "The Beatles",
    "sortName" : "Beatles, The",
    "disambiguation" : "John, Paul, George and Ringo",
    "url" : "https://www.setlist.fm/setlists/the-beatles-23d6a88b.html"
  },
  "venue" : {
    "city" : {
      "id" : "5357527",
      "name" : "Hollywood",
      "stateCode" : "CA",
      "state" : "California",
      "coords" : { },
      "country" : { }
    },
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
    "song" : [ {
      "name" : "Yesterday",
      "with" : { },
      "cover" : { },
      "info" : "...",
      "tape" : false
    }, {
      "name" : "...",
      "with" : { },
      "cover" : { },
      "info" : "...",
      "tape" : true
    } ]
  }, {
    "name" : "...",
    "encore" : 12345,
    "song" : [ {
      "name" : "...",
      "with" : { },
      "cover" : { },
      "info" : "...",
      "tape" : true
    }, {
      "name" : "...",
      "with" : { },
      "cover" : { },
      "info" : "...",
      "tape" : true
    } ]
  } ],
  "info" : "Recorded and published as 'The Beatles at the Hollywood Bowl'",
  "url" : "https://www.setlist.fm/setlist/the-beatles/1964/hollywood-bowl-hollywood-ca-63de4613.html",
  "id" : "63de4613",
  "versionId" : "7be1aaa0",
  "eventDate" : "23-08-1964",
  "lastUpdated" : "2013-10-20T05:18:08.000+0000"
}}]
     - parameter versionId: (path) the version id 

     - returns: RequestBuilder<JsonSetlist> 
     */
    open class func resourceSetlistVersionVersionIdGetSetlistVersionGETWithRequestBuilder(versionId: String) -> RequestBuilder<JsonSetlist> {
        var path = "/1.0/setlist/version/{versionId}"
        let versionIdPreEscape = "\(versionId)"
        let versionIdPostEscape = versionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{versionId}", with: versionIdPostEscape, options: .literal, range: nil)
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<JsonSetlist>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
