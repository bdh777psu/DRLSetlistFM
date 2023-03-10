//
// SFMartistmbidAPI.swift
//


import Foundation
import Alamofire


open class SFMartistmbidAPI {
    /**
     .

     - parameter mbid: (path) a Musicbrainz MBID, e.g. 0bfba3d3-6a04-4779-bb0a-df07df5b0558 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceArtistMbidGetArtistGET(mbid: String, completion: @escaping ((_ data: JsonArtist?,_ error: Error?) -> Void)) {
        resourceArtistMbidGetArtistGETWithRequestBuilder(mbid: mbid).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     .
     - GET /1.0/artist/{mbid}

     - examples: [{contentType=application/json, example={
  "mbid" : "b10bbbfc-cf9e-42e0-be17-e2c3e1d2600d",
  "tmid" : 735610,
  "name" : "The Beatles",
  "sortName" : "Beatles, The",
  "disambiguation" : "John, Paul, George and Ringo",
  "url" : "https://www.setlist.fm/setlists/the-beatles-23d6a88b.html"
}}]
     - parameter mbid: (path) a Musicbrainz MBID, e.g. 0bfba3d3-6a04-4779-bb0a-df07df5b0558 

     - returns: RequestBuilder<JsonArtist> 
     */
    open class func resourceArtistMbidGetArtistGETWithRequestBuilder(mbid: String) -> RequestBuilder<JsonArtist> {
        var path = "/1.0/artist/{mbid}"
        let mbidPreEscape = "\(mbid)"
        let mbidPostEscape = mbidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{mbid}", with: mbidPostEscape, options: .literal, range: nil)
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<JsonArtist>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
