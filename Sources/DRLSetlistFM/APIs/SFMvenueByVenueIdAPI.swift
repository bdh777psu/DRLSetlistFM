//
// SFMvenuevenueIdAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SFMvenueByVenueIdAPI {
    /**
     Get a venue by its unique id.

     - parameter venueId: (path) the venue&#x27;s id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sfmVenueVenueIdGetVenue(venueId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        sfmVenueVenueIdGetVenueWithRequestBuilder(venueId: venueId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Get a venue by its unique id.
     - GET /1.0/venue/{venueId}

     - API Key:
       - type: apiKey X-API-KEY 
       - name: ApiKeyAuth
     - examples: [{contentType=application/json, example=""}]
     - parameter venueId: (path) the venue&#x27;s id 

     - returns: RequestBuilder<Void> 
     */
    open class func sfmVenueVenueIdGetVenueWithRequestBuilder(venueId: String) -> RequestBuilder<Void> {
        var path = "/1.0/venue/{venueId}"
        let venueIdPreEscape = "\(venueId)"
        let venueIdPostEscape = venueIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{venueId}", with: venueIdPostEscape, options: .literal, range: nil)
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = DRLSetlistFM.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
