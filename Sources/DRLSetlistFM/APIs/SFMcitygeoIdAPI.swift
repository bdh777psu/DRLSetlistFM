//
// SFMcitygeoIdAPI.swift
//


import Foundation
import Alamofire


open class SFMcitygeoIdAPI {
    /**
     Get a city by its unique geoId.

     - parameter geoId: (path) the city&#x27;s geoId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resourceCityGeoIdGetCityGET(geoId: String, completion: @escaping ((_ data: JsonCity?,_ error: Error?) -> Void)) {
        resourceCityGeoIdGetCityGETWithRequestBuilder(geoId: geoId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a city by its unique geoId.
     - GET /1.0/city/{geoId}

     - examples: [{contentType=application/json, example={
  "id" : "5357527",
  "name" : "Hollywood",
  "stateCode" : "CA",
  "state" : "California",
  "coords" : {
    "long" : -118.3267434,
    "lat" : 34.0983425
  },
  "country" : {
    "code" : "US",
    "name" : "United States"
  }
}}]
     - parameter geoId: (path) the city&#x27;s geoId 

     - returns: RequestBuilder<JsonCity> 
     */
    open class func resourceCityGeoIdGetCityGETWithRequestBuilder(geoId: String) -> RequestBuilder<JsonCity> {
        var path = "/1.0/city/{geoId}"
        let geoIdPreEscape = "\(geoId)"
        let geoIdPostEscape = geoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{geoId}", with: geoIdPostEscape, options: .literal, range: nil)
        let URLString = DRLSetlistFM.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<JsonCity>.Type = DRLSetlistFM.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
