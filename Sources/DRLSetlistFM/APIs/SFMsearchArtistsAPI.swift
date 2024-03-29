//
// SFMsearchartistsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SFMsearchArtistsAPI {
    /**
     Search for artists.

     - parameter artistMbid: (query) the artist&#x27;s Musicbrainz Identifier (mbid) (optional)
     - parameter artistName: (query) the artist&#x27;s name (optional)
     - parameter artistTmid: (query) the artist&#x27;s Ticketmaster Identifier (tmid) (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional)
     - parameter sort: (query) the sort of the result, either sortName (default) or relevance (optional, default to sortName)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sfmSearchArtistsGetArtists(artistMbid: String? = nil, artistName: String? = nil, artistTmid: Int? = nil, p: Int? = nil, sort: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        sfmSearchArtistsGetArtistsWithRequestBuilder(artistMbid: artistMbid, artistName: artistName, artistTmid: artistTmid, p: p, sort: sort).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Search for artists.
     - GET /1.0/search/artists

     - API Key:
       - type: apiKey X-API-KEY 
       - name: ApiKeyAuth
     - examples: [{contentType=application/json, example=""}]
     - parameter artistMbid: (query) the artist&#x27;s Musicbrainz Identifier (mbid) (optional)
     - parameter artistName: (query) the artist&#x27;s name (optional)
     - parameter artistTmid: (query) the artist&#x27;s Ticketmaster Identifier (tmid) (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional)
     - parameter sort: (query) the sort of the result, either sortName (default) or relevance (optional, default to sortName)

     - returns: RequestBuilder<Void> 
     */
    open class func sfmSearchArtistsGetArtistsWithRequestBuilder(artistMbid: String? = nil, artistName: String? = nil, artistTmid: Int? = nil, p: Int? = nil, sort: String? = nil) -> RequestBuilder<Void> {
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


        let requestBuilder: RequestBuilder<Void>.Type = DRLSetlistFM.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
